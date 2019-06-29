package com.lotecs.attendcheck.common;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.CheckBox;
import com.lotecs.attendcheck.domain.AppInfo;
import kr.ac.unist.atdc.R;

public class AgreeActivity extends Activity {
    private static final String TAG = "AgreeActivity";
    CheckBox checkBox;
    CheckBox checkBox2;
    private String iddi;
    private String idno;
    private AppInfo info;
    WebView webView2_;
    WebView webView3_;

    class AndroidBridge {
        AndroidBridge() {
        }

        @JavascriptInterface
        public void logout() {
            AgreeActivity.this.finish();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_agree);
        this.webView2_ = (WebView) findViewById(R.id.webView2);
        this.webView3_ = (WebView) findViewById(R.id.webView3);
        this.checkBox = (CheckBox) findViewById(R.id.checkBox);
        this.checkBox2 = (CheckBox) findViewById(R.id.checkBox2);
        this.info = (AppInfo) getIntent().getParcelableExtra("app");
        this.idno = this.info.getIdno();
        this.iddi = this.info.getIddi();
        loadWeb();
        getActionBar().hide();
    }

    private void loadWeb() {
        runOnUiThread(new Runnable() {
            @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
            public void run() {
                AgreeActivity.this.webView2_.setWebViewClient(new WebViewClient() {
                    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                        webView.loadUrl(str);
                        return true;
                    }

                    public void onReceivedError(WebView webView, int i, String str, String str2) {
                        super.onReceivedError(webView, i, str, str2);
                    }
                });
                AgreeActivity.this.webView2_.setWebChromeClient(new WebChromeClient());
                AgreeActivity.this.webView2_.getSettings().setJavaScriptEnabled(true);
                AgreeActivity.this.webView2_.getSettings().setUseWideViewPort(true);
                AgreeActivity.this.webView2_.getSettings().setLoadWithOverviewMode(true);
                AgreeActivity.this.webView2_.addJavascriptInterface(new AndroidBridge(), SystemMediaRouteProvider.PACKAGE_NAME);
                AgreeActivity.this.webView2_.loadUrl(AgreeActivity.this.getString(R.string.terms_use));
                AgreeActivity.this.webView3_.setWebViewClient(new WebViewClient() {
                    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                        webView.loadUrl(str);
                        return true;
                    }

                    public void onReceivedError(WebView webView, int i, String str, String str2) {
                        super.onReceivedError(webView, i, str, str2);
                    }
                });
                AgreeActivity.this.webView3_.setWebChromeClient(new WebChromeClient());
                AgreeActivity.this.webView3_.getSettings().setJavaScriptEnabled(true);
                AgreeActivity.this.webView3_.getSettings().setUseWideViewPort(true);
                AgreeActivity.this.webView3_.getSettings().setLoadWithOverviewMode(true);
                AgreeActivity.this.webView3_.addJavascriptInterface(new AndroidBridge(), SystemMediaRouteProvider.PACKAGE_NAME);
                AgreeActivity.this.webView3_.loadUrl(AgreeActivity.this.getString(R.string.private_policy));
            }
        });
    }
}
