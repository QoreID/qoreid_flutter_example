package com.example.qoreid_test

import android.os.Bundle
import android.os.PersistableBundle
import io.flutter.embedding.android.FlutterActivity
import com.qoreid.qoreidsdk.QoreidsdkPlugin

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        QoreidsdkPlugin.initialize(this)
    }
}
