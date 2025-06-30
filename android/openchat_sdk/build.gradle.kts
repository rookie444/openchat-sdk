plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android") version "1.6.21"
    id("maven-publish")
}

android {
    namespace = "com.example.openchat_sdk"
    compileSdk = 33

    defaultConfig {
        minSdk = 21
        targetSdk = 33

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        consumerProguardFiles("consumer-rules.pro")
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    kotlinOptions {
        jvmTarget = "1.8"
    }
}

dependencies {
    implementation("androidx.core:core-ktx:1.9.0")
    implementation("androidx.appcompat:appcompat:1.6.1")
    implementation("com.google.android.material:material:1.8.0")
    
    // Flutter dependencies
    implementation("io.flutter:flutter_embedding_release:1.0.0-3316dd8728419ad3534e3f6112aa6291f587078a")
    
    // Coroutines
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.6.4")
    
    testImplementation("junit:junit:4.13.2")
    androidTestImplementation("androidx.test.ext:junit:1.1.5")
    androidTestImplementation("androidx.test.espresso:espresso-core:3.5.1")
}

// Publishing configuration for JitPack
afterEvaluate {
    publishing {
        publications {
            create<MavenPublication>("release") {
                from(components["release"])
                
                // JitPack 会自动设置 groupId、artifactId、version
                
                pom {
                    name.set("OpenChat SDK")
                    description.set("A Flutter+Rust based chat SDK for Android integration")
                    url.set("https://github.com/rookie444/openchat-sdk")
                    
                    licenses {
                        license {
                            name.set("MIT License")
                            url.set("https://opensource.org/licenses/MIT")
                        }
                    }
                    
                    developers {
                        developer {
                            id.set("rookie444")
                            name.set("Rookie444")
                            email.set("your-email@example.com")
                        }
                    }
                    
                    scm {
                        connection.set("scm:git:git://github.com/rookie444/openchat-sdk.git")
                        developerConnection.set("scm:git:ssh://github.com:rookie444/openchat-sdk.git")
                        url.set("https://github.com/rookie444/openchat-sdk")
                    }
                }
            }
        }
    }
} 