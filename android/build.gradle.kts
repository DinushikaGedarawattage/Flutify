plugins {
    id("com.google.gms.google-services") version "4.4.3" apply false
}
allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

buildscript {
    dependencies {
        classpath("com.google.gms:google-services:4.4.3")
    }
}

// Set custom build directory for root project
rootProject.buildDir = file("../../build")

subprojects {
    // Set custom build directory for subprojects
    buildDir = file("${rootProject.buildDir}/${project.name}")
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
