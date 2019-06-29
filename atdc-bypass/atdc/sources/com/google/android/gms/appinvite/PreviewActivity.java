package com.google.android.gms.appinvite;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import java.util.ArrayList;

@KeepForSdkWithMembers
public class PreviewActivity extends Activity {
    public static final String ACTION_PREVIEW = "com.google.android.gms.appinvite.ACTION_PREVIEW";
    public static final String EXTRA_LAYOUT_RES_ID = "com.google.android.gms.appinvite.LAYOUT_RES_ID";
    public static final String EXTRA_TABS = "com.google.android.gms.appinvite.TABS";
    public static final String EXTRA_VIEWS = "com.google.android.gms.appinvite.VIEWS";
    public static final String KEY_TAB_CONTENT_ID = "tabContentId";
    public static final String KEY_TAB_TAG = "tabTag";
    public static final String KEY_TEXT_VIEW_IS_TITLE = "TextView_isTitle";
    public static final String KEY_TEXT_VIEW_TEXT = "TextView_text";
    public static final String KEY_TEXT_VIEW_TEXT_COLOR = "TextView_textColor";
    public static final String KEY_VIEW_BACKGROUND_COLOR = "View_backgroundColor";
    public static final String KEY_VIEW_ID = "View_id";
    public static final String KEY_VIEW_MIN_HEIGHT = "View_minHeight";
    public static final String KEY_VIEW_ON_CLICK_LISTENER = "View_onClickListener";
    public static final String KEY_WEB_VIEW_DATA = "WebView_data";
    public static final String ON_CLICK_LISTENER_CLOSE = "close";

    private final android.view.View zza(android.content.Context r11, android.view.ViewGroup r12, android.os.Bundle r13) {
        /*
        r10 = this;
        r0 = "com.google.android.gms.appinvite.LAYOUT_RES_ID";
        r0 = r13.getInt(r0);
        r11 = android.view.LayoutInflater.from(r11);
        r1 = 0;
        r11 = r11.inflate(r0, r12, r1);
        r12 = "com.google.android.gms.appinvite.VIEWS";
        r12 = r13.getParcelableArrayList(r12);
        if (r12 == 0) goto L_0x0127;
    L_0x0017:
        r12 = (java.util.ArrayList) r12;
        r13 = r12.size();
        r0 = 0;
    L_0x001e:
        if (r0 >= r13) goto L_0x0127;
    L_0x0020:
        r2 = r12.get(r0);
        r0 = r0 + 1;
        r2 = (android.os.Bundle) r2;
        r3 = "View_id";
        r3 = r2.getInt(r3);
        r3 = r11.findViewById(r3);
        r4 = r2.keySet();
        r4 = r4.iterator();
    L_0x003a:
        r5 = r4.hasNext();
        if (r5 == 0) goto L_0x001e;
    L_0x0040:
        r5 = r4.next();
        r5 = (java.lang.String) r5;
        r6 = r5.hashCode();
        r7 = -1;
        switch(r6) {
            case -1829808865: goto L_0x008b;
            case -499175494: goto L_0x0081;
            case -111184848: goto L_0x0077;
            case 573559753: goto L_0x006d;
            case 966644059: goto L_0x0063;
            case 1729346977: goto L_0x0059;
            case 1920443715: goto L_0x004f;
            default: goto L_0x004e;
        };
    L_0x004e:
        goto L_0x0095;
    L_0x004f:
        r6 = "View_onClickListener";
        r6 = r5.equals(r6);
        if (r6 == 0) goto L_0x0095;
    L_0x0057:
        r6 = 2;
        goto L_0x0096;
    L_0x0059:
        r6 = "TextView_isTitle";
        r6 = r5.equals(r6);
        if (r6 == 0) goto L_0x0095;
    L_0x0061:
        r6 = 5;
        goto L_0x0096;
    L_0x0063:
        r6 = "View_backgroundColor";
        r6 = r5.equals(r6);
        if (r6 == 0) goto L_0x0095;
    L_0x006b:
        r6 = 0;
        goto L_0x0096;
    L_0x006d:
        r6 = "TextView_textColor";
        r6 = r5.equals(r6);
        if (r6 == 0) goto L_0x0095;
    L_0x0075:
        r6 = 4;
        goto L_0x0096;
    L_0x0077:
        r6 = "WebView_data";
        r6 = r5.equals(r6);
        if (r6 == 0) goto L_0x0095;
    L_0x007f:
        r6 = 6;
        goto L_0x0096;
    L_0x0081:
        r6 = "TextView_text";
        r6 = r5.equals(r6);
        if (r6 == 0) goto L_0x0095;
    L_0x0089:
        r6 = 3;
        goto L_0x0096;
    L_0x008b:
        r6 = "View_minHeight";
        r6 = r5.equals(r6);
        if (r6 == 0) goto L_0x0095;
    L_0x0093:
        r6 = 1;
        goto L_0x0096;
    L_0x0095:
        r6 = -1;
    L_0x0096:
        switch(r6) {
            case 0: goto L_0x011e;
            case 1: goto L_0x0115;
            case 2: goto L_0x00f0;
            case 3: goto L_0x00e0;
            case 4: goto L_0x00d0;
            case 5: goto L_0x00ba;
            case 6: goto L_0x009a;
            default: goto L_0x0099;
        };
    L_0x0099:
        goto L_0x003a;
    L_0x009a:
        r6 = r3 instanceof android.view.ViewGroup;
        if (r6 == 0) goto L_0x003a;
    L_0x009e:
        r6 = new android.webkit.WebView;
        r6.<init>(r10);
        r5 = r2.getString(r5);
        r8 = "text/html; charset=utf-8";
        r9 = "UTF-8";
        r6.loadData(r5, r8, r9);
        r5 = r3;
        r5 = (android.view.ViewGroup) r5;
        r8 = new android.view.ViewGroup$LayoutParams;
        r8.<init>(r7, r7);
        r5.addView(r6, r8);
        goto L_0x003a;
    L_0x00ba:
        r6 = r3 instanceof android.widget.TextView;
        if (r6 == 0) goto L_0x003a;
    L_0x00be:
        r5 = r2.getBoolean(r5);
        if (r5 == 0) goto L_0x003a;
    L_0x00c4:
        r5 = r3;
        r5 = (android.widget.TextView) r5;
        r5 = r5.getText();
        r10.setTitle(r5);
        goto L_0x003a;
    L_0x00d0:
        r6 = r3 instanceof android.widget.TextView;
        if (r6 == 0) goto L_0x003a;
    L_0x00d4:
        r6 = r3;
        r6 = (android.widget.TextView) r6;
        r5 = r2.getInt(r5);
        r6.setTextColor(r5);
        goto L_0x003a;
    L_0x00e0:
        r6 = r3 instanceof android.widget.TextView;
        if (r6 == 0) goto L_0x003a;
    L_0x00e4:
        r6 = r3;
        r6 = (android.widget.TextView) r6;
        r5 = r2.getCharSequence(r5);
        r6.setText(r5);
        goto L_0x003a;
    L_0x00f0:
        r5 = r2.getString(r5);
        r6 = r5.hashCode();
        r8 = 94756344; // 0x5a5ddf8 float:1.5598064E-35 double:4.68158543E-316;
        if (r6 == r8) goto L_0x00fe;
    L_0x00fd:
        goto L_0x0107;
    L_0x00fe:
        r6 = "close";
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x0107;
    L_0x0106:
        r7 = 0;
    L_0x0107:
        if (r7 == 0) goto L_0x010b;
    L_0x0109:
        goto L_0x003a;
    L_0x010b:
        r5 = new com.google.android.gms.appinvite.zzb;
        r5.<init>(r10);
        r3.setOnClickListener(r5);
        goto L_0x003a;
    L_0x0115:
        r5 = r2.getInt(r5);
        r3.setMinimumHeight(r5);
        goto L_0x003a;
    L_0x011e:
        r5 = r2.getInt(r5);
        r3.setBackgroundColor(r5);
        goto L_0x003a;
    L_0x0127:
        return r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.appinvite.PreviewActivity.zza(android.content.Context, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getCallingActivity() == null || !"com.google.android.gms".equals(getCallingActivity().getPackageName())) {
            finish();
            return;
        }
        try {
            int i = 0;
            Context createPackageContext = createPackageContext("com.google.android.gms", 0);
            Bundle extras = getIntent().getExtras();
            View zza = zza(createPackageContext, null, extras);
            if (zza == null) {
                finish();
                return;
            }
            TabHost tabHost = (TabHost) zza.findViewById(16908306);
            TabWidget tabWidget = (TabWidget) zza.findViewById(16908307);
            ArrayList parcelableArrayList = extras.getParcelableArrayList(EXTRA_TABS);
            if (!(tabHost == null || tabWidget == null || parcelableArrayList == null)) {
                tabHost.setup();
                parcelableArrayList = parcelableArrayList;
                int size = parcelableArrayList.size();
                while (i < size) {
                    Object obj = parcelableArrayList.get(i);
                    i++;
                    Bundle bundle2 = (Bundle) obj;
                    TabSpec newTabSpec = tabHost.newTabSpec(bundle2.getString(KEY_TAB_TAG));
                    newTabSpec.setContent(bundle2.getInt(KEY_TAB_CONTENT_ID));
                    newTabSpec.setIndicator(zza(createPackageContext, tabWidget, bundle2));
                    tabHost.addTab(newTabSpec);
                }
            }
            setContentView(zza);
        } catch (NameNotFoundException unused) {
            finish();
        }
    }
}
