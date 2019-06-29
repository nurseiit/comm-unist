package com.lotecs.attendcheck.common;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.lotecs.attendcheck.common.OptionComplexAdapter.OnCheckButtonListener;
import com.lotecs.util.AndroidUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import kr.ac.unist.atdc.R;

public class OptionActivity extends Activity {
    public static final String ITEM_COTENT = "content";
    public static final String ITEM_TITLE = "title";

    class Component {
        private String caption;
        private boolean state;
        private String title;

        Component() {
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public String getCaption() {
            return this.caption;
        }

        public void setCaption(String str) {
            this.caption = str;
        }

        public boolean isState() {
            return this.state;
        }

        public void setState(boolean z) {
            this.state = z;
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_setting);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setHomeButtonEnabled(true);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setTitle(R.string.option_title);
        }
        setContentView(initOptionView(getIntent(), AndroidUtil.getBooleanApiValue(this, "isBeacon", false)));
    }

    public Map<String, ?> createItem(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("title", str);
        hashMap.put("content", str2);
        return hashMap;
    }

    public Component createComponent(String str, String str2, boolean z) {
        Component component = new Component();
        component.setTitle(str);
        component.setCaption(str2);
        component.setState(z);
        return component;
    }

    private ListView initOptionView(Intent intent, boolean z) {
        final Intent intent2 = intent;
        String stringExtra = intent2.getStringExtra("psnm");
        String stringExtra2 = intent2.getStringExtra("name");
        LinkedList linkedList = new LinkedList();
        linkedList.add(createItem(stringExtra, stringExtra2));
        ArrayList arrayList = new ArrayList();
        arrayList.add(createComponent("Keep Bluetooth On", "Keep Bluetooth on after checking the attendance", z));
        LinkedList linkedList2 = new LinkedList();
        linkedList2.add(createItem("Android Version", VERSION.RELEASE));
        LinkedList linkedList3 = new LinkedList();
        linkedList3.add(createItem("Version", getString(R.string.app_version)));
        OptionSimpleAdapter optionSimpleAdapter = new OptionSimpleAdapter(this);
        optionSimpleAdapter.addSection("Login Information", new SimpleAdapter(this, linkedList, R.layout.setting_list_item, new String[]{"title", "content"}, new int[]{R.id.list_item_left, R.id.list_item_right}));
        OptionComplexAdapter optionComplexAdapter = new OptionComplexAdapter(this, arrayList, R.layout.setting_list_complex);
        optionComplexAdapter.setOnCheckButtonListener(new OnCheckButtonListener() {
            public void onClick(int i, boolean z) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("position = ");
                stringBuilder.append(i);
                stringBuilder.append("/state = ");
                stringBuilder.append(z);
                Log.d("reload debug", stringBuilder.toString());
                if (z) {
                    OptionActivity.this.changeBtn(intent2, true);
                } else {
                    OptionActivity.this.changeBtn(intent2, false);
                }
            }
        });
        optionSimpleAdapter.addSection("Setting", optionComplexAdapter);
        linkedList = linkedList2;
        optionSimpleAdapter.addSection("Terminal Information", new SimpleAdapter(this, linkedList, R.layout.setting_list_item, new String[]{"title", "content"}, new int[]{R.id.list_item_left, R.id.list_item_right}));
        linkedList = linkedList3;
        optionSimpleAdapter.addSection("Program Information", new SimpleAdapter(this, linkedList, R.layout.setting_list_item, new String[]{"title", "content"}, new int[]{R.id.list_item_left, R.id.list_item_right}));
        ListView listView = new ListView(this);
        listView.setAdapter(optionSimpleAdapter);
        return listView;
    }

    private void changeBtn(final Intent intent, final boolean z) {
        runOnUiThread(new Runnable() {
            public void run() {
                OptionActivity.this.setContentView(OptionActivity.this.initOptionView(intent, z));
                AndroidUtil.saveBooleanApiValue(OptionActivity.this, "isBeacon", z);
            }
        });
    }
}
