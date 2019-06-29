package com.lotecs.attendcheck;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class ReCheckRestartReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        Intent intent2 = new Intent(context, ReCheckService.class);
        intent2.putExtras(extras);
        context.startService(intent2);
    }
}
