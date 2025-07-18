package com.example.openchat_sdk

import android.app.Activity
import android.content.Context
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*

/**
 * OpenChat SDK for Android
 * 提供Flutter模块的Android集成接口
 */
class OpenChatSDK private constructor() {
    
    companion object {
        private const val TAG = "OpenChatSDK"
        private const val ENGINE_ID = "openchat_engine"
        private const val METHOD_CHANNEL = "com.example.openchat_client/sdk"
        
        @Volatile
        private var INSTANCE: OpenChatSDK? = null
        
        fun getInstance(): OpenChatSDK {
            return INSTANCE ?: synchronized(this) {
                INSTANCE ?: OpenChatSDK().also { INSTANCE = it }
            }
        }
    }
    
    private var flutterEngine: FlutterEngine? = null
    private var methodChannel: MethodChannel? = null
    private var isInitialized = false
    private val scope = CoroutineScope(Dispatchers.Main + SupervisorJob())
    
    /**
     * 初始化OpenChat SDK
     * @param context Android上下文
     * @param config 配置参数
     */
    fun initialize(context: Context, config: OpenChatConfig, callback: (Boolean, String?) -> Unit) {
        if (isInitialized) {
            callback(true, null)
            return
        }
        
        scope.launch {
            try {
                Log.d(TAG, "开始初始化OpenChat SDK")
                
                // 创建Flutter引擎
                flutterEngine = FlutterEngine(context).apply {
                    dartExecutor.executeDartEntrypoint(
                        DartExecutor.DartEntrypoint.createDefault()
                    )
                }
                
                // 缓存引擎
                FlutterEngineCache.getInstance().put(ENGINE_ID, flutterEngine!!)
                
                // 创建方法通道
                methodChannel = MethodChannel(flutterEngine!!.dartExecutor.binaryMessenger, METHOD_CHANNEL)
                
                // 等待引擎准备就绪
                flutterEngine!!.lifecycleChannel.appIsResumed()
                
                // 调用Flutter端初始化方法
                methodChannel?.invokeMethod("initialize", config.toMap()) { result ->
                    if (result is Boolean && result) {
                        isInitialized = true
                        Log.d(TAG, "OpenChat SDK初始化成功")
                        callback(true, null)
                    } else {
                        Log.e(TAG, "OpenChat SDK初始化失败")
                        callback(false, "初始化失败")
                    }
                }
                
            } catch (e: Exception) {
                Log.e(TAG, "OpenChat SDK初始化异常", e)
                callback(false, e.message)
            }
        }
    }
    
    /**
     * 设置账号信息
     * @param accountInfo 账号信息
     * @param callback 回调函数
     */
    fun setAccountInfo(accountInfo: AccountInfo, callback: (Boolean, String?) -> Unit) {
        if (!isInitialized) {
            callback(false, "SDK未初始化")
            return
        }
        
        methodChannel?.invokeMethod("setAccountInfo", accountInfo.toMap()) { result ->
            if (result is Boolean && result) {
                Log.d(TAG, "账号信息设置成功")
                callback(true, null)
            } else {
                Log.e(TAG, "账号信息设置失败")
                callback(false, "设置账号信息失败")
            }
        }
    }
    
    /**
     * 登录
     * @param phone 手机号
     * @param password 密码
     * @param countryCode 国家代码
     * @param callback 回调函数
     */
    fun login(phone: String, password: String, countryCode: String = "86", callback: (Boolean, String?) -> Unit) {
        if (!isInitialized) {
            callback(false, "SDK未初始化")
            return
        }
        
        val loginData = mapOf(
            "phone" to phone,
            "password" to password,
            "countryCode" to countryCode
        )
        
        methodChannel?.invokeMethod("login", loginData) { result ->
            if (result is Boolean && result) {
                Log.d(TAG, "登录成功")
                callback(true, null)
            } else {
                Log.e(TAG, "登录失败")
                callback(false, "登录失败")
            }
        }
    }
    
    /**
     * 注册
     * @param phone 手机号
     * @param password 密码
     * @param countryCode 国家代码
     * @param callback 回调函数
     */
    fun register(phone: String, password: String, countryCode: String = "86", callback: (Boolean, String?) -> Unit) {
        if (!isInitialized) {
            callback(false, "SDK未初始化")
            return
        }
        
        val registerData = mapOf(
            "phone" to phone,
            "password" to password,
            "countryCode" to countryCode
        )
        
        methodChannel?.invokeMethod("register", registerData) { result ->
            if (result is Boolean && result) {
                Log.d(TAG, "注册成功")
                callback(true, null)
            } else {
                Log.e(TAG, "注册失败")
                callback(false, "注册失败")
            }
        }
    }
    
    /**
     * 打开OpenChat主界面
     * @param activity 当前Activity
     * @param initialRoute 初始路由
     */
    fun openChatActivity(activity: Activity, initialRoute: String = "/") {
        if (!isInitialized) {
            Log.e(TAG, "OpenChat SDK未初始化")
            return
        }
        
        val intent = FlutterActivity
            .withCachedEngine(ENGINE_ID)
            .initialRoute(initialRoute)
            .build(activity)
        
        activity.startActivity(intent)
    }
    
    /**
     * 打开聊天详情页面
     * @param activity 当前Activity
     * @param chatType 聊天类型
     * @param targetId 目标ID
     */
    fun openChatDetail(activity: Activity, chatType: Int, targetId: Int) {
        val route = "/conversationDetail/$chatType/$targetId"
        openChatActivity(activity, route)
    }
    
    /**
     * 打开聊天Demo页面
     * @param activity 当前Activity
     * @param chatType 聊天类型
     * @param targetId 目标ID
     */
    fun openChatDemo(activity: Activity, chatType: Int, targetId: Int) {
        val route = "/chatDemo/$chatType/$targetId"
        openChatActivity(activity, route)
    }
    
    /**
     * 获取当前用户信息
     * @param callback 回调函数
     */
    fun getCurrentUser(callback: (Map<String, Any>?, String?) -> Unit) {
        if (!isInitialized) {
            callback(null, "SDK未初始化")
            return
        }
        
        methodChannel?.invokeMethod("getCurrentUser", null) { result ->
            if (result is Map<*, *>) {
                @Suppress("UNCHECKED_CAST")
                callback(result as Map<String, Any>, null)
            } else {
                callback(null, "获取用户信息失败")
            }
        }
    }
    
    /**
     * 检查登录状态
     * @param callback 回调函数
     */
    fun isLoggedIn(callback: (Boolean) -> Unit) {
        if (!isInitialized) {
            callback(false)
            return
        }
        
        methodChannel?.invokeMethod("isLoggedIn", null) { result ->
            if (result is Boolean) {
                callback(result)
            } else {
                callback(false)
            }
        }
    }
    
    /**
     * 登出
     * @param callback 回调函数
     */
    fun logout(callback: (Boolean, String?) -> Unit) {
        if (!isInitialized) {
            callback(false, "SDK未初始化")
            return
        }
        
        methodChannel?.invokeMethod("logout", null) { result ->
            if (result is Boolean && result) {
                isInitialized = false
                flutterEngine?.destroy()
                flutterEngine = null
                methodChannel = null
                FlutterEngineCache.getInstance().remove(ENGINE_ID)
                callback(true, null)
            } else {
                callback(false, "登出失败")
            }
        }
    }
    
    /**
     * 检查是否已初始化
     */
    fun isInitialized(): Boolean = isInitialized
    
    /**
     * 释放资源
     */
    fun destroy() {
        scope.launch {
            try {
                if (isInitialized) {
                    logout { _, _ -> }
                }
                scope.cancel()
                INSTANCE = null
            } catch (e: Exception) {
                Log.e(TAG, "销毁SDK时发生异常", e)
            }
        }
    }
}

/**
 * OpenChat配置类
 */
data class OpenChatConfig(
    val phone: String = "",
    val password: String = "",
    val countryCode: String = "86",
    val uid: Int = 0,
    val customBaseDir: String? = null,
    val serverUrl: String = "",
    val appId: String = "",
    val appSecret: String = ""
) {
    fun toMap(): Map<String, Any> {
        return mapOf(
            "phone" to phone,
            "password" to password,
            "countryCode" to countryCode,
            "uid" to uid,
            "customBaseDir" to (customBaseDir ?: ""),
            "serverUrl" to serverUrl,
            "appId" to appId,
            "appSecret" to appSecret
        )
    }
}

/**
 * 账号信息类
 */
data class AccountInfo(
    val uid: Int,
    val phone: String,
    val nickname: String = "",
    val avatar: String = "",
    val email: String = "",
    val countryCode: String = "86",
    val token: String = "",
    val refreshToken: String = ""
) {
    fun toMap(): Map<String, Any> {
        return mapOf(
            "uid" to uid,
            "phone" to phone,
            "nickname" to nickname,
            "avatar" to avatar,
            "email" to email,
            "countryCode" to countryCode,
            "token" to token,
            "refreshToken" to refreshToken
        )
    }
} 