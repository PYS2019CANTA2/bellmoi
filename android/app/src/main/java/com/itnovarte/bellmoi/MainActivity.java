package com.itnovarte.bellmoi;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

public class MainActivity extends FlutterActivity {

    private static final String CHANNEL = "open_android_native_camera_activity";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
       // setContentView(R.layout.activity_camera);

        Log.i("Camera_Activity", "oncreate");

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall call, Result result) {
                        if(call.method.equals("startCameraActivity")) {
                            //new startNewActivity();
                            Intent intent = new Intent(MainActivity.this, CameraActivity.class);
                            startActivity(intent);
                        }

                    }
                });
    }
/*
    private class startNewActivity(){
        Intent intent = new Intent(MainActivity.this, CameraActivity.class);
        startActivity(intent);
    }*/


}
