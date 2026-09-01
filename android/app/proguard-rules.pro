# Keep WorkManager internal components
-keep class androidx.work.impl.** { *; }

# Keep Room Database implementations
-keep class * extends androidx.room.RoomDatabase {
    <init>(...);
}

# Keep the specific WorkDatabase implementation constructor
-keep class androidx.work.impl.WorkDatabase_Impl {
    <init>(...);
}


## Flutter wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class com.google.firebase.** { *; }
-dontwarn io.flutter.embedding.**
-ignorewarnings

# QoreID
-keep class com.qoreid.sdk.** { *; }

-dontwarn javax.annotation.Nullable
-keep,includecode,includedescriptorclasses class com.facetec.sdk.** { *; }
# Disable heavy optimization passes on FaceTec bytecode
-keepclassmembers class com.facetec.sdk.** { *; }


## Keep generic signatures and annotations often heavily used by FaceTec
-keepattributes *Annotation*,Signature,InnerClasses,EnclosingMethod,SourceFile,LineNumberTable,Exceptions