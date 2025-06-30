plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
    id("maven-publish")
    id("signing")
}

android {
    namespace = "com.example.openchat_sdk"
    compileSdk = 34

    defaultConfig {
        minSdk = 21
        targetSdk = 34

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
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.1")
    
    testImplementation("junit:junit:4.13.2")
    androidTestImplementation("androidx.test.ext:junit:1.1.5")
    androidTestImplementation("androidx.test.espresso:espresso-core:3.5.1")
}

// Publishing configuration
afterEvaluate {
    publishing {
        publications {
            create<MavenPublication>("release") {
                from(components["release"])
                
                groupId = "com.example"
                artifactId = "openchat-sdk"
                version = "1.0.0"
                
                pom {
                    name.set("OpenChat SDK")
                    description.set("A Flutter+Rust based chat SDK for Android")
                    url.set("https://github.com/your-username/openchat-client")
                    
                    licenses {
                        license {
                            name.set("MIT License")
                            url.set("https://opensource.org/licenses/MIT")
                        }
                    }
                    
                    developers {
                        developer {
                            id.set("your-username")
                            name.set("Your Name")
                            email.set("your-email@example.com")
                        }
                    }
                    
                    scm {
                        connection.set("scm:git:git://github.com/your-username/openchat-client.git")
                        developerConnection.set("scm:git:ssh://github.com:your-username/openchat-client.git")
                        url.set("https://github.com/your-username/openchat-client")
                    }
                }
            }
        }
        
        repositories {
            // GitHub Packages
            maven {
                name = "GitHubPackages"
                url = uri("https://maven.pkg.github.com/your-username/openchat-client")
                credentials {
                    username = project.findProperty("gpr.user") ?: System.getenv("GITHUB_USERNAME")
                    password = project.findProperty("gpr.key") ?: System.getenv("GITHUB_TOKEN")
                }
            }
            
            // Maven Central (需要申请)
            maven {
                name = "MavenCentral"
                url = uri("https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/")
                credentials {
                    username = project.findProperty("ossrhUsername") ?: System.getenv("OSSRH_USERNAME")
                    password = project.findProperty("ossrhPassword") ?: System.getenv("OSSRH_PASSWORD")
                }
            }
        }
    }
    
    // Signing configuration (for Maven Central)
    signing {
        val signingKeyId = project.findProperty("signing.keyId") as String?
        val signingPassword = project.findProperty("signing.password") as String?
        val signingSecretKeyRingFile = project.findProperty("signing.secretKeyRingFile") as String?
        
        if (signingKeyId != null) {
            useInMemoryPgpKeys(signingKeyId, signingSecretKeyRingFile, signingPassword)
            sign(publishing.publications["release"])
        }
    }
} 