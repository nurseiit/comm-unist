package com.androidnetworking.common;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.widget.ImageView.ScaleType;
import com.androidnetworking.core.Core;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.AnalyticsListener;
import com.androidnetworking.interfaces.BitmapRequestListener;
import com.androidnetworking.interfaces.DownloadListener;
import com.androidnetworking.interfaces.DownloadProgressListener;
import com.androidnetworking.interfaces.JSONArrayRequestListener;
import com.androidnetworking.interfaces.JSONObjectRequestListener;
import com.androidnetworking.interfaces.OkHttpResponseAndBitmapRequestListener;
import com.androidnetworking.interfaces.OkHttpResponseAndJSONArrayRequestListener;
import com.androidnetworking.interfaces.OkHttpResponseAndJSONObjectRequestListener;
import com.androidnetworking.interfaces.OkHttpResponseAndParsedRequestListener;
import com.androidnetworking.interfaces.OkHttpResponseAndStringRequestListener;
import com.androidnetworking.interfaces.OkHttpResponseListener;
import com.androidnetworking.interfaces.ParsedRequestListener;
import com.androidnetworking.interfaces.StringRequestListener;
import com.androidnetworking.interfaces.UploadProgressListener;
import com.androidnetworking.internal.ANRequestQueue;
import com.androidnetworking.internal.SynchronousCall;
import com.androidnetworking.utils.ParseUtil;
import com.androidnetworking.utils.Utils;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import okhttp3.CacheControl.Builder;
import okhttp3.Call;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Okio;
import org.json.JSONArray;
import org.json.JSONObject;

public class ANRequest<T extends ANRequest> {
    private static final MediaType JSON_MEDIA_TYPE = MediaType.parse("application/json; charset=utf-8");
    private static final MediaType MEDIA_TYPE_MARKDOWN = MediaType.parse("text/x-markdown; charset=utf-8");
    private static final String TAG = "ANRequest";
    private static final Object sDecodeLock = new Object();
    private Call call;
    private MediaType customMediaType;
    private Future future;
    private boolean isCancelled;
    private boolean isDelivered;
    private boolean isRunning;
    private AnalyticsListener mAnalyticsListener;
    private String mApplicationJsonString;
    private BitmapRequestListener mBitmapRequestListener;
    private HashMap<String, String> mBodyParameterMap;
    private byte[] mByte;
    private CacheControl mCacheControl;
    private Config mDecodeConfig;
    private String mDirPath;
    private DownloadListener mDownloadListener;
    private DownloadProgressListener mDownloadProgressListener;
    private Executor mExecutor;
    private File mFile;
    private String mFileName;
    private HashMap<String, List<String>> mHeadersMap;
    private JSONArrayRequestListener mJSONArrayRequestListener;
    private JSONObjectRequestListener mJSONObjectRequestListener;
    private int mMaxHeight;
    private int mMaxWidth;
    private int mMethod;
    private HashMap<String, File> mMultiPartFileMap;
    private HashMap<String, String> mMultiPartParameterMap;
    private OkHttpClient mOkHttpClient;
    private OkHttpResponseAndBitmapRequestListener mOkHttpResponseAndBitmapRequestListener;
    private OkHttpResponseAndJSONArrayRequestListener mOkHttpResponseAndJSONArrayRequestListener;
    private OkHttpResponseAndJSONObjectRequestListener mOkHttpResponseAndJSONObjectRequestListener;
    private OkHttpResponseAndParsedRequestListener mOkHttpResponseAndParsedRequestListener;
    private OkHttpResponseAndStringRequestListener mOkHttpResponseAndStringRequestListener;
    private OkHttpResponseListener mOkHttpResponseListener;
    private ParsedRequestListener mParsedRequestListener;
    private HashMap<String, String> mPathParameterMap;
    private int mPercentageThresholdForCancelling;
    private Priority mPriority;
    private int mProgress;
    private HashMap<String, List<String>> mQueryParameterMap;
    private int mRequestType;
    private ResponseType mResponseType;
    private ScaleType mScaleType;
    private String mStringBody;
    private StringRequestListener mStringRequestListener;
    private Object mTag;
    private Type mType;
    private UploadProgressListener mUploadProgressListener;
    private String mUrl;
    private HashMap<String, String> mUrlEncodedFormBodyParameterMap;
    private String mUserAgent;
    private int sequenceNumber;

    public static class DownloadBuilder<T extends DownloadBuilder> implements RequestBuilder {
        private CacheControl mCacheControl;
        private String mDirPath;
        private Executor mExecutor;
        private String mFileName;
        private HashMap<String, List<String>> mHeadersMap = new HashMap();
        private OkHttpClient mOkHttpClient;
        private HashMap<String, String> mPathParameterMap = new HashMap();
        private int mPercentageThresholdForCancelling = 0;
        private Priority mPriority = Priority.MEDIUM;
        private HashMap<String, List<String>> mQueryParameterMap = new HashMap();
        private Object mTag;
        private String mUrl;
        private String mUserAgent;

        public DownloadBuilder(String str, String str2, String str3) {
            this.mUrl = str;
            this.mDirPath = str2;
            this.mFileName = str3;
        }

        public T setPriority(Priority priority) {
            this.mPriority = priority;
            return this;
        }

        public T setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public T addHeaders(String str, String str2) {
            List list = (List) this.mHeadersMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mHeadersMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addHeaders(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addHeaders((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addHeaders(Object obj) {
            return obj != null ? addHeaders(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T addQueryParameter(String str, String str2) {
            List list = (List) this.mQueryParameterMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mQueryParameterMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addQueryParameter(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addQueryParameter(Object obj) {
            return obj != null ? addQueryParameter(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T addPathParameter(String str, String str2) {
            this.mPathParameterMap.put(str, str2);
            return this;
        }

        public T addPathParameter(Map<String, String> map) {
            if (map != null) {
                this.mPathParameterMap.putAll(map);
            }
            return this;
        }

        public T addPathParameter(Object obj) {
            if (obj != null) {
                this.mPathParameterMap.putAll(ParseUtil.getParserFactory().getStringMap(obj));
            }
            return this;
        }

        public T doNotCacheResponse() {
            this.mCacheControl = new Builder().noStore().build();
            return this;
        }

        public T getResponseOnlyIfCached() {
            this.mCacheControl = CacheControl.FORCE_CACHE;
            return this;
        }

        public T getResponseOnlyFromNetwork() {
            this.mCacheControl = CacheControl.FORCE_NETWORK;
            return this;
        }

        public T setMaxAgeCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxAge(i, timeUnit).build();
            return this;
        }

        public T setMaxStaleCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxStale(i, timeUnit).build();
            return this;
        }

        public T setExecutor(Executor executor) {
            this.mExecutor = executor;
            return this;
        }

        public T setOkHttpClient(OkHttpClient okHttpClient) {
            this.mOkHttpClient = okHttpClient;
            return this;
        }

        public T setUserAgent(String str) {
            this.mUserAgent = str;
            return this;
        }

        public T setPercentageThresholdForCancelling(int i) {
            this.mPercentageThresholdForCancelling = i;
            return this;
        }

        public ANRequest build() {
            return new ANRequest(this);
        }
    }

    public static class GetRequestBuilder<T extends GetRequestBuilder> implements RequestBuilder {
        private Options mBitmapOptions;
        private CacheControl mCacheControl;
        private Config mDecodeConfig;
        private Executor mExecutor;
        private HashMap<String, List<String>> mHeadersMap = new HashMap();
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMethod = 0;
        private OkHttpClient mOkHttpClient;
        private HashMap<String, String> mPathParameterMap = new HashMap();
        private Priority mPriority = Priority.MEDIUM;
        private HashMap<String, List<String>> mQueryParameterMap = new HashMap();
        private ScaleType mScaleType;
        private Object mTag;
        private String mUrl;
        private String mUserAgent;

        public GetRequestBuilder(String str) {
            this.mUrl = str;
            this.mMethod = 0;
        }

        public GetRequestBuilder(String str, int i) {
            this.mUrl = str;
            this.mMethod = i;
        }

        public T setPriority(Priority priority) {
            this.mPriority = priority;
            return this;
        }

        public T setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public T addQueryParameter(String str, String str2) {
            List list = (List) this.mQueryParameterMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mQueryParameterMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addQueryParameter(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addQueryParameter(Object obj) {
            return obj != null ? addQueryParameter(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T addPathParameter(String str, String str2) {
            this.mPathParameterMap.put(str, str2);
            return this;
        }

        public T addPathParameter(Map<String, String> map) {
            if (map != null) {
                this.mPathParameterMap.putAll(map);
            }
            return this;
        }

        public T addPathParameter(Object obj) {
            if (obj != null) {
                this.mPathParameterMap.putAll(ParseUtil.getParserFactory().getStringMap(obj));
            }
            return this;
        }

        public T addHeaders(String str, String str2) {
            List list = (List) this.mHeadersMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mHeadersMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addHeaders(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addHeaders((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addHeaders(Object obj) {
            return obj != null ? addHeaders(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T doNotCacheResponse() {
            this.mCacheControl = new Builder().noStore().build();
            return this;
        }

        public T getResponseOnlyIfCached() {
            this.mCacheControl = CacheControl.FORCE_CACHE;
            return this;
        }

        public T getResponseOnlyFromNetwork() {
            this.mCacheControl = CacheControl.FORCE_NETWORK;
            return this;
        }

        public T setMaxAgeCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxAge(i, timeUnit).build();
            return this;
        }

        public T setMaxStaleCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxStale(i, timeUnit).build();
            return this;
        }

        public T setExecutor(Executor executor) {
            this.mExecutor = executor;
            return this;
        }

        public T setOkHttpClient(OkHttpClient okHttpClient) {
            this.mOkHttpClient = okHttpClient;
            return this;
        }

        public T setUserAgent(String str) {
            this.mUserAgent = str;
            return this;
        }

        public T setBitmapConfig(Config config) {
            this.mDecodeConfig = config;
            return this;
        }

        public T setBitmapOptions(Options options) {
            this.mBitmapOptions = options;
            return this;
        }

        public T setBitmapMaxHeight(int i) {
            this.mMaxHeight = i;
            return this;
        }

        public T setBitmapMaxWidth(int i) {
            this.mMaxWidth = i;
            return this;
        }

        public T setImageScaleType(ScaleType scaleType) {
            this.mScaleType = scaleType;
            return this;
        }

        public ANRequest build() {
            return new ANRequest(this);
        }
    }

    public static class MultiPartBuilder<T extends MultiPartBuilder> implements RequestBuilder {
        private CacheControl mCacheControl;
        private String mCustomContentType;
        private Executor mExecutor;
        private HashMap<String, List<String>> mHeadersMap = new HashMap();
        private HashMap<String, File> mMultiPartFileMap = new HashMap();
        private HashMap<String, String> mMultiPartParameterMap = new HashMap();
        private OkHttpClient mOkHttpClient;
        private HashMap<String, String> mPathParameterMap = new HashMap();
        private int mPercentageThresholdForCancelling = 0;
        private Priority mPriority = Priority.MEDIUM;
        private HashMap<String, List<String>> mQueryParameterMap = new HashMap();
        private Object mTag;
        private String mUrl;
        private String mUserAgent;

        public MultiPartBuilder(String str) {
            this.mUrl = str;
        }

        public T setPriority(Priority priority) {
            this.mPriority = priority;
            return this;
        }

        public T setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public T addQueryParameter(String str, String str2) {
            List list = (List) this.mQueryParameterMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mQueryParameterMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addQueryParameter(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addQueryParameter(Object obj) {
            return obj != null ? addQueryParameter(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T addPathParameter(String str, String str2) {
            this.mPathParameterMap.put(str, str2);
            return this;
        }

        public T addPathParameter(Map<String, String> map) {
            if (map != null) {
                this.mPathParameterMap.putAll(map);
            }
            return this;
        }

        public T addPathParameter(Object obj) {
            if (obj != null) {
                this.mPathParameterMap.putAll(ParseUtil.getParserFactory().getStringMap(obj));
            }
            return this;
        }

        public T addHeaders(String str, String str2) {
            List list = (List) this.mHeadersMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mHeadersMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addHeaders(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addHeaders((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addHeaders(Object obj) {
            return obj != null ? addHeaders(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T doNotCacheResponse() {
            this.mCacheControl = new Builder().noStore().build();
            return this;
        }

        public T getResponseOnlyIfCached() {
            this.mCacheControl = CacheControl.FORCE_CACHE;
            return this;
        }

        public T getResponseOnlyFromNetwork() {
            this.mCacheControl = CacheControl.FORCE_NETWORK;
            return this;
        }

        public T setMaxAgeCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxAge(i, timeUnit).build();
            return this;
        }

        public T setMaxStaleCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxStale(i, timeUnit).build();
            return this;
        }

        public T setExecutor(Executor executor) {
            this.mExecutor = executor;
            return this;
        }

        public T setOkHttpClient(OkHttpClient okHttpClient) {
            this.mOkHttpClient = okHttpClient;
            return this;
        }

        public T setUserAgent(String str) {
            this.mUserAgent = str;
            return this;
        }

        public T addMultipartParameter(String str, String str2) {
            this.mMultiPartParameterMap.put(str, str2);
            return this;
        }

        public T addMultipartParameter(Map<String, String> map) {
            if (map != null) {
                this.mMultiPartParameterMap.putAll(map);
            }
            return this;
        }

        public T addMultipartParameter(Object obj) {
            if (obj != null) {
                this.mMultiPartParameterMap.putAll(ParseUtil.getParserFactory().getStringMap(obj));
            }
            return this;
        }

        public T addMultipartFile(String str, File file) {
            this.mMultiPartFileMap.put(str, file);
            return this;
        }

        public T addMultipartFile(Map<String, File> map) {
            if (map != null) {
                this.mMultiPartFileMap.putAll(map);
            }
            return this;
        }

        public T setPercentageThresholdForCancelling(int i) {
            this.mPercentageThresholdForCancelling = i;
            return this;
        }

        public T setContentType(String str) {
            this.mCustomContentType = str;
            return this;
        }

        public ANRequest build() {
            return new ANRequest(this);
        }
    }

    public static class PostRequestBuilder<T extends PostRequestBuilder> implements RequestBuilder {
        private String mApplicationJsonString = null;
        private HashMap<String, String> mBodyParameterMap = new HashMap();
        private byte[] mByte = null;
        private CacheControl mCacheControl;
        private String mCustomContentType;
        private Executor mExecutor;
        private File mFile = null;
        private HashMap<String, List<String>> mHeadersMap = new HashMap();
        private int mMethod = 1;
        private OkHttpClient mOkHttpClient;
        private HashMap<String, String> mPathParameterMap = new HashMap();
        private Priority mPriority = Priority.MEDIUM;
        private HashMap<String, List<String>> mQueryParameterMap = new HashMap();
        private String mStringBody = null;
        private Object mTag;
        private String mUrl;
        private HashMap<String, String> mUrlEncodedFormBodyParameterMap = new HashMap();
        private String mUserAgent;

        public PostRequestBuilder(String str) {
            this.mUrl = str;
            this.mMethod = 1;
        }

        public PostRequestBuilder(String str, int i) {
            this.mUrl = str;
            this.mMethod = i;
        }

        public T setPriority(Priority priority) {
            this.mPriority = priority;
            return this;
        }

        public T setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public T addQueryParameter(String str, String str2) {
            List list = (List) this.mQueryParameterMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mQueryParameterMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addQueryParameter(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addQueryParameter(Object obj) {
            return obj != null ? addQueryParameter(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T addPathParameter(String str, String str2) {
            this.mPathParameterMap.put(str, str2);
            return this;
        }

        public T addPathParameter(Map<String, String> map) {
            if (map != null) {
                this.mPathParameterMap.putAll(map);
            }
            return this;
        }

        public T addPathParameter(Object obj) {
            if (obj != null) {
                this.mPathParameterMap.putAll(ParseUtil.getParserFactory().getStringMap(obj));
            }
            return this;
        }

        public T addHeaders(String str, String str2) {
            List list = (List) this.mHeadersMap.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mHeadersMap.put(str, list);
            }
            if (!list.contains(str2)) {
                list.add(str2);
            }
            return this;
        }

        public T addHeaders(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    addHeaders((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return this;
        }

        public T addHeaders(Object obj) {
            return obj != null ? addHeaders(ParseUtil.getParserFactory().getStringMap(obj)) : this;
        }

        public T doNotCacheResponse() {
            this.mCacheControl = new Builder().noStore().build();
            return this;
        }

        public T getResponseOnlyIfCached() {
            this.mCacheControl = CacheControl.FORCE_CACHE;
            return this;
        }

        public T getResponseOnlyFromNetwork() {
            this.mCacheControl = CacheControl.FORCE_NETWORK;
            return this;
        }

        public T setMaxAgeCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxAge(i, timeUnit).build();
            return this;
        }

        public T setMaxStaleCacheControl(int i, TimeUnit timeUnit) {
            this.mCacheControl = new Builder().maxStale(i, timeUnit).build();
            return this;
        }

        public T setExecutor(Executor executor) {
            this.mExecutor = executor;
            return this;
        }

        public T setOkHttpClient(OkHttpClient okHttpClient) {
            this.mOkHttpClient = okHttpClient;
            return this;
        }

        public T setUserAgent(String str) {
            this.mUserAgent = str;
            return this;
        }

        public T addBodyParameter(String str, String str2) {
            this.mBodyParameterMap.put(str, str2);
            return this;
        }

        public T addBodyParameter(Map<String, String> map) {
            if (map != null) {
                this.mBodyParameterMap.putAll(map);
            }
            return this;
        }

        public T addBodyParameter(Object obj) {
            if (obj != null) {
                this.mBodyParameterMap.putAll(ParseUtil.getParserFactory().getStringMap(obj));
            }
            return this;
        }

        public T addUrlEncodeFormBodyParameter(String str, String str2) {
            this.mUrlEncodedFormBodyParameterMap.put(str, str2);
            return this;
        }

        public T addUrlEncodeFormBodyParameter(Map<String, String> map) {
            if (map != null) {
                this.mUrlEncodedFormBodyParameterMap.putAll(map);
            }
            return this;
        }

        public T addUrlEncodeFormBodyParameter(Object obj) {
            if (obj != null) {
                this.mUrlEncodedFormBodyParameterMap.putAll(ParseUtil.getParserFactory().getStringMap(obj));
            }
            return this;
        }

        public T addApplicationJsonBody(Object obj) {
            if (obj != null) {
                this.mApplicationJsonString = ParseUtil.getParserFactory().getString(obj);
            }
            return this;
        }

        public T addJSONObjectBody(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.mApplicationJsonString = jSONObject.toString();
            }
            return this;
        }

        public T addJSONArrayBody(JSONArray jSONArray) {
            if (jSONArray != null) {
                this.mApplicationJsonString = jSONArray.toString();
            }
            return this;
        }

        public T addStringBody(String str) {
            this.mStringBody = str;
            return this;
        }

        public T addFileBody(File file) {
            this.mFile = file;
            return this;
        }

        public T addByteBody(byte[] bArr) {
            this.mByte = bArr;
            return this;
        }

        public T setContentType(String str) {
            this.mCustomContentType = str;
            return this;
        }

        public ANRequest build() {
            return new ANRequest(this);
        }
    }

    public static class DeleteRequestBuilder extends PostRequestBuilder {
        public DeleteRequestBuilder(String str) {
            super(str, 3);
        }
    }

    public static class DynamicRequestBuilder extends PostRequestBuilder {
        public DynamicRequestBuilder(String str, int i) {
            super(str, i);
        }
    }

    public static class HeadRequestBuilder extends GetRequestBuilder {
        public HeadRequestBuilder(String str) {
            super(str, 4);
        }
    }

    public static class OptionsRequestBuilder extends GetRequestBuilder {
        public OptionsRequestBuilder(String str) {
            super(str, 6);
        }
    }

    public static class PatchRequestBuilder extends PostRequestBuilder {
        public PatchRequestBuilder(String str) {
            super(str, 5);
        }
    }

    public static class PutRequestBuilder extends PostRequestBuilder {
        public PutRequestBuilder(String str) {
            super(str, 2);
        }
    }

    public ANRequest(GetRequestBuilder getRequestBuilder) {
        this.mHeadersMap = new HashMap();
        this.mBodyParameterMap = new HashMap();
        this.mUrlEncodedFormBodyParameterMap = new HashMap();
        this.mMultiPartParameterMap = new HashMap();
        this.mQueryParameterMap = new HashMap();
        this.mPathParameterMap = new HashMap();
        this.mMultiPartFileMap = new HashMap();
        this.mApplicationJsonString = null;
        this.mStringBody = null;
        this.mByte = null;
        this.mFile = null;
        this.customMediaType = null;
        this.mPercentageThresholdForCancelling = 0;
        this.mCacheControl = null;
        this.mExecutor = null;
        this.mOkHttpClient = null;
        this.mUserAgent = null;
        this.mType = null;
        this.mRequestType = 0;
        this.mMethod = getRequestBuilder.mMethod;
        this.mPriority = getRequestBuilder.mPriority;
        this.mUrl = getRequestBuilder.mUrl;
        this.mTag = getRequestBuilder.mTag;
        this.mHeadersMap = getRequestBuilder.mHeadersMap;
        this.mDecodeConfig = getRequestBuilder.mDecodeConfig;
        this.mMaxHeight = getRequestBuilder.mMaxHeight;
        this.mMaxWidth = getRequestBuilder.mMaxWidth;
        this.mScaleType = getRequestBuilder.mScaleType;
        this.mQueryParameterMap = getRequestBuilder.mQueryParameterMap;
        this.mPathParameterMap = getRequestBuilder.mPathParameterMap;
        this.mCacheControl = getRequestBuilder.mCacheControl;
        this.mExecutor = getRequestBuilder.mExecutor;
        this.mOkHttpClient = getRequestBuilder.mOkHttpClient;
        this.mUserAgent = getRequestBuilder.mUserAgent;
    }

    public ANRequest(PostRequestBuilder postRequestBuilder) {
        this.mHeadersMap = new HashMap();
        this.mBodyParameterMap = new HashMap();
        this.mUrlEncodedFormBodyParameterMap = new HashMap();
        this.mMultiPartParameterMap = new HashMap();
        this.mQueryParameterMap = new HashMap();
        this.mPathParameterMap = new HashMap();
        this.mMultiPartFileMap = new HashMap();
        this.mApplicationJsonString = null;
        this.mStringBody = null;
        this.mByte = null;
        this.mFile = null;
        this.customMediaType = null;
        this.mPercentageThresholdForCancelling = 0;
        this.mCacheControl = null;
        this.mExecutor = null;
        this.mOkHttpClient = null;
        this.mUserAgent = null;
        this.mType = null;
        this.mRequestType = 0;
        this.mMethod = postRequestBuilder.mMethod;
        this.mPriority = postRequestBuilder.mPriority;
        this.mUrl = postRequestBuilder.mUrl;
        this.mTag = postRequestBuilder.mTag;
        this.mHeadersMap = postRequestBuilder.mHeadersMap;
        this.mBodyParameterMap = postRequestBuilder.mBodyParameterMap;
        this.mUrlEncodedFormBodyParameterMap = postRequestBuilder.mUrlEncodedFormBodyParameterMap;
        this.mQueryParameterMap = postRequestBuilder.mQueryParameterMap;
        this.mPathParameterMap = postRequestBuilder.mPathParameterMap;
        this.mApplicationJsonString = postRequestBuilder.mApplicationJsonString;
        this.mStringBody = postRequestBuilder.mStringBody;
        this.mFile = postRequestBuilder.mFile;
        this.mByte = postRequestBuilder.mByte;
        this.mCacheControl = postRequestBuilder.mCacheControl;
        this.mExecutor = postRequestBuilder.mExecutor;
        this.mOkHttpClient = postRequestBuilder.mOkHttpClient;
        this.mUserAgent = postRequestBuilder.mUserAgent;
        if (postRequestBuilder.mCustomContentType != null) {
            this.customMediaType = MediaType.parse(postRequestBuilder.mCustomContentType);
        }
    }

    public ANRequest(DownloadBuilder downloadBuilder) {
        this.mHeadersMap = new HashMap();
        this.mBodyParameterMap = new HashMap();
        this.mUrlEncodedFormBodyParameterMap = new HashMap();
        this.mMultiPartParameterMap = new HashMap();
        this.mQueryParameterMap = new HashMap();
        this.mPathParameterMap = new HashMap();
        this.mMultiPartFileMap = new HashMap();
        this.mApplicationJsonString = null;
        this.mStringBody = null;
        this.mByte = null;
        this.mFile = null;
        this.customMediaType = null;
        this.mPercentageThresholdForCancelling = 0;
        this.mCacheControl = null;
        this.mExecutor = null;
        this.mOkHttpClient = null;
        this.mUserAgent = null;
        this.mType = null;
        this.mRequestType = 1;
        this.mMethod = 0;
        this.mPriority = downloadBuilder.mPriority;
        this.mUrl = downloadBuilder.mUrl;
        this.mTag = downloadBuilder.mTag;
        this.mDirPath = downloadBuilder.mDirPath;
        this.mFileName = downloadBuilder.mFileName;
        this.mHeadersMap = downloadBuilder.mHeadersMap;
        this.mQueryParameterMap = downloadBuilder.mQueryParameterMap;
        this.mPathParameterMap = downloadBuilder.mPathParameterMap;
        this.mCacheControl = downloadBuilder.mCacheControl;
        this.mPercentageThresholdForCancelling = downloadBuilder.mPercentageThresholdForCancelling;
        this.mExecutor = downloadBuilder.mExecutor;
        this.mOkHttpClient = downloadBuilder.mOkHttpClient;
        this.mUserAgent = downloadBuilder.mUserAgent;
    }

    public ANRequest(MultiPartBuilder multiPartBuilder) {
        this.mHeadersMap = new HashMap();
        this.mBodyParameterMap = new HashMap();
        this.mUrlEncodedFormBodyParameterMap = new HashMap();
        this.mMultiPartParameterMap = new HashMap();
        this.mQueryParameterMap = new HashMap();
        this.mPathParameterMap = new HashMap();
        this.mMultiPartFileMap = new HashMap();
        this.mApplicationJsonString = null;
        this.mStringBody = null;
        this.mByte = null;
        this.mFile = null;
        this.customMediaType = null;
        this.mPercentageThresholdForCancelling = 0;
        this.mCacheControl = null;
        this.mExecutor = null;
        this.mOkHttpClient = null;
        this.mUserAgent = null;
        this.mType = null;
        this.mRequestType = 2;
        this.mMethod = 1;
        this.mPriority = multiPartBuilder.mPriority;
        this.mUrl = multiPartBuilder.mUrl;
        this.mTag = multiPartBuilder.mTag;
        this.mHeadersMap = multiPartBuilder.mHeadersMap;
        this.mQueryParameterMap = multiPartBuilder.mQueryParameterMap;
        this.mPathParameterMap = multiPartBuilder.mPathParameterMap;
        this.mMultiPartParameterMap = multiPartBuilder.mMultiPartParameterMap;
        this.mMultiPartFileMap = multiPartBuilder.mMultiPartFileMap;
        this.mCacheControl = multiPartBuilder.mCacheControl;
        this.mPercentageThresholdForCancelling = multiPartBuilder.mPercentageThresholdForCancelling;
        this.mExecutor = multiPartBuilder.mExecutor;
        this.mOkHttpClient = multiPartBuilder.mOkHttpClient;
        this.mUserAgent = multiPartBuilder.mUserAgent;
        if (multiPartBuilder.mCustomContentType != null) {
            this.customMediaType = MediaType.parse(multiPartBuilder.mCustomContentType);
        }
    }

    public void getAsJSONObject(JSONObjectRequestListener jSONObjectRequestListener) {
        this.mResponseType = ResponseType.JSON_OBJECT;
        this.mJSONObjectRequestListener = jSONObjectRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsJSONArray(JSONArrayRequestListener jSONArrayRequestListener) {
        this.mResponseType = ResponseType.JSON_ARRAY;
        this.mJSONArrayRequestListener = jSONArrayRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsString(StringRequestListener stringRequestListener) {
        this.mResponseType = ResponseType.STRING;
        this.mStringRequestListener = stringRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponse(OkHttpResponseListener okHttpResponseListener) {
        this.mResponseType = ResponseType.OK_HTTP_RESPONSE;
        this.mOkHttpResponseListener = okHttpResponseListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsBitmap(BitmapRequestListener bitmapRequestListener) {
        this.mResponseType = ResponseType.BITMAP;
        this.mBitmapRequestListener = bitmapRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsParsed(TypeToken typeToken, ParsedRequestListener parsedRequestListener) {
        this.mType = typeToken.getType();
        this.mResponseType = ResponseType.PARSED;
        this.mParsedRequestListener = parsedRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsObject(Class cls, ParsedRequestListener parsedRequestListener) {
        this.mType = cls;
        this.mResponseType = ResponseType.PARSED;
        this.mParsedRequestListener = parsedRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsObjectList(Class cls, ParsedRequestListener parsedRequestListener) {
        this.mType = C$Gson$Types.newParameterizedTypeWithOwner(null, List.class, cls);
        this.mResponseType = ResponseType.PARSED;
        this.mParsedRequestListener = parsedRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponseAndJSONObject(OkHttpResponseAndJSONObjectRequestListener okHttpResponseAndJSONObjectRequestListener) {
        this.mResponseType = ResponseType.JSON_OBJECT;
        this.mOkHttpResponseAndJSONObjectRequestListener = okHttpResponseAndJSONObjectRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponseAndJSONArray(OkHttpResponseAndJSONArrayRequestListener okHttpResponseAndJSONArrayRequestListener) {
        this.mResponseType = ResponseType.JSON_ARRAY;
        this.mOkHttpResponseAndJSONArrayRequestListener = okHttpResponseAndJSONArrayRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponseAndString(OkHttpResponseAndStringRequestListener okHttpResponseAndStringRequestListener) {
        this.mResponseType = ResponseType.STRING;
        this.mOkHttpResponseAndStringRequestListener = okHttpResponseAndStringRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponseAndBitmap(OkHttpResponseAndBitmapRequestListener okHttpResponseAndBitmapRequestListener) {
        this.mResponseType = ResponseType.BITMAP;
        this.mOkHttpResponseAndBitmapRequestListener = okHttpResponseAndBitmapRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponseAndParsed(TypeToken typeToken, OkHttpResponseAndParsedRequestListener okHttpResponseAndParsedRequestListener) {
        this.mType = typeToken.getType();
        this.mResponseType = ResponseType.PARSED;
        this.mOkHttpResponseAndParsedRequestListener = okHttpResponseAndParsedRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponseAndObject(Class cls, OkHttpResponseAndParsedRequestListener okHttpResponseAndParsedRequestListener) {
        this.mType = cls;
        this.mResponseType = ResponseType.PARSED;
        this.mOkHttpResponseAndParsedRequestListener = okHttpResponseAndParsedRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void getAsOkHttpResponseAndObjectList(Class cls, OkHttpResponseAndParsedRequestListener okHttpResponseAndParsedRequestListener) {
        this.mType = C$Gson$Types.newParameterizedTypeWithOwner(null, List.class, cls);
        this.mResponseType = ResponseType.PARSED;
        this.mOkHttpResponseAndParsedRequestListener = okHttpResponseAndParsedRequestListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void startDownload(DownloadListener downloadListener) {
        this.mDownloadListener = downloadListener;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public void prefetch() {
        this.mResponseType = ResponseType.PREFETCH;
        ANRequestQueue.getInstance().addRequest(this);
    }

    public ANResponse executeForJSONObject() {
        this.mResponseType = ResponseType.JSON_OBJECT;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForJSONArray() {
        this.mResponseType = ResponseType.JSON_ARRAY;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForString() {
        this.mResponseType = ResponseType.STRING;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForOkHttpResponse() {
        this.mResponseType = ResponseType.OK_HTTP_RESPONSE;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForBitmap() {
        this.mResponseType = ResponseType.BITMAP;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForParsed(TypeToken typeToken) {
        this.mType = typeToken.getType();
        this.mResponseType = ResponseType.PARSED;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForObject(Class cls) {
        this.mType = cls;
        this.mResponseType = ResponseType.PARSED;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForObjectList(Class cls) {
        this.mType = C$Gson$Types.newParameterizedTypeWithOwner(null, List.class, cls);
        this.mResponseType = ResponseType.PARSED;
        return SynchronousCall.execute(this);
    }

    public ANResponse executeForDownload() {
        return SynchronousCall.execute(this);
    }

    public T setDownloadProgressListener(DownloadProgressListener downloadProgressListener) {
        this.mDownloadProgressListener = downloadProgressListener;
        return this;
    }

    public T setUploadProgressListener(UploadProgressListener uploadProgressListener) {
        this.mUploadProgressListener = uploadProgressListener;
        return this;
    }

    public T setAnalyticsListener(AnalyticsListener analyticsListener) {
        this.mAnalyticsListener = analyticsListener;
        return this;
    }

    public AnalyticsListener getAnalyticsListener() {
        return this.mAnalyticsListener;
    }

    public int getMethod() {
        return this.mMethod;
    }

    public Priority getPriority() {
        return this.mPriority;
    }

    public String getUrl() {
        String str = this.mUrl;
        for (Entry entry : this.mPathParameterMap.entrySet()) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("{");
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("}");
            str = str.replace(stringBuilder.toString(), String.valueOf(entry.getValue()));
        }
        HttpUrl.Builder newBuilder = HttpUrl.parse(str).newBuilder();
        if (this.mQueryParameterMap != null) {
            for (Entry entry2 : this.mQueryParameterMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                List<String> list = (List) entry2.getValue();
                if (list != null) {
                    for (String addQueryParameter : list) {
                        newBuilder.addQueryParameter(str2, addQueryParameter);
                    }
                }
            }
        }
        return newBuilder.build().toString();
    }

    public int getSequenceNumber() {
        return this.sequenceNumber;
    }

    public void setSequenceNumber(int i) {
        this.sequenceNumber = i;
    }

    public void setProgress(int i) {
        this.mProgress = i;
    }

    public void setResponseAs(ResponseType responseType) {
        this.mResponseType = responseType;
    }

    public ResponseType getResponseAs() {
        return this.mResponseType;
    }

    public Object getTag() {
        return this.mTag;
    }

    public int getRequestType() {
        return this.mRequestType;
    }

    public OkHttpClient getOkHttpClient() {
        return this.mOkHttpClient;
    }

    public void setUserAgent(String str) {
        this.mUserAgent = str;
    }

    public String getUserAgent() {
        return this.mUserAgent;
    }

    public Type getType() {
        return this.mType;
    }

    public void setType(Type type) {
        this.mType = type;
    }

    public DownloadProgressListener getDownloadProgressListener() {
        return new DownloadProgressListener() {
            public void onProgress(long j, long j2) {
                if (ANRequest.this.mDownloadProgressListener != null && !ANRequest.this.isCancelled) {
                    ANRequest.this.mDownloadProgressListener.onProgress(j, j2);
                }
            }
        };
    }

    public void updateDownloadCompletion() {
        this.isDelivered = true;
        if (this.mDownloadListener == null) {
            finish();
        } else if (this.isCancelled) {
            deliverError(new ANError());
            finish();
        } else if (this.mExecutor != null) {
            this.mExecutor.execute(new Runnable() {
                public void run() {
                    if (ANRequest.this.mDownloadListener != null) {
                        ANRequest.this.mDownloadListener.onDownloadComplete();
                    }
                    ANRequest.this.finish();
                }
            });
        } else {
            Core.getInstance().getExecutorSupplier().forMainThreadTasks().execute(new Runnable() {
                public void run() {
                    if (ANRequest.this.mDownloadListener != null) {
                        ANRequest.this.mDownloadListener.onDownloadComplete();
                    }
                    ANRequest.this.finish();
                }
            });
        }
    }

    public UploadProgressListener getUploadProgressListener() {
        return new UploadProgressListener() {
            public void onProgress(long j, long j2) {
                ANRequest.this.mProgress = (int) ((100 * j) / j2);
                if (ANRequest.this.mUploadProgressListener != null && !ANRequest.this.isCancelled) {
                    ANRequest.this.mUploadProgressListener.onProgress(j, j2);
                }
            }
        };
    }

    public String getDirPath() {
        return this.mDirPath;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public CacheControl getCacheControl() {
        return this.mCacheControl;
    }

    public ScaleType getScaleType() {
        return this.mScaleType;
    }

    public void cancel(boolean z) {
        if (!z) {
            try {
                if (this.mPercentageThresholdForCancelling != 0) {
                    if (this.mProgress >= this.mPercentageThresholdForCancelling) {
                        return;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        this.isCancelled = true;
        this.isRunning = false;
        if (this.call != null) {
            this.call.cancel();
        }
        if (this.future != null) {
            this.future.cancel(true);
        }
        if (!this.isDelivered) {
            deliverError(new ANError());
        }
    }

    public boolean isCanceled() {
        return this.isCancelled;
    }

    public boolean isRunning() {
        return this.isRunning;
    }

    public void setRunning(boolean z) {
        this.isRunning = z;
    }

    public Call getCall() {
        return this.call;
    }

    public void setCall(Call call) {
        this.call = call;
    }

    public Future getFuture() {
        return this.future;
    }

    public void setFuture(Future future) {
        this.future = future;
    }

    public void destroy() {
        this.mJSONArrayRequestListener = null;
        this.mJSONObjectRequestListener = null;
        this.mStringRequestListener = null;
        this.mBitmapRequestListener = null;
        this.mParsedRequestListener = null;
        this.mDownloadProgressListener = null;
        this.mUploadProgressListener = null;
        this.mDownloadListener = null;
        this.mAnalyticsListener = null;
    }

    public void finish() {
        destroy();
        ANRequestQueue.getInstance().finish(this);
    }

    public ANResponse parseResponse(Response response) {
        switch (this.mResponseType) {
            case JSON_ARRAY:
                try {
                    return ANResponse.success(new JSONArray(Okio.buffer(response.body().source()).readUtf8()));
                } catch (Exception e) {
                    return ANResponse.failed(Utils.getErrorForParse(new ANError(e)));
                }
            case JSON_OBJECT:
                try {
                    return ANResponse.success(new JSONObject(Okio.buffer(response.body().source()).readUtf8()));
                } catch (Exception e2) {
                    return ANResponse.failed(Utils.getErrorForParse(new ANError(e2)));
                }
            case STRING:
                try {
                    return ANResponse.success(Okio.buffer(response.body().source()).readUtf8());
                } catch (Exception e22) {
                    return ANResponse.failed(Utils.getErrorForParse(new ANError(e22)));
                }
            case BITMAP:
                ANResponse decodeBitmap;
                synchronized (sDecodeLock) {
                    try {
                        decodeBitmap = Utils.decodeBitmap(response, this.mMaxWidth, this.mMaxHeight, this.mDecodeConfig, this.mScaleType);
                    } catch (Exception e222) {
                        return ANResponse.failed(Utils.getErrorForParse(new ANError(e222)));
                    } catch (Throwable th) {
                    }
                }
                return decodeBitmap;
            case PARSED:
                try {
                    return ANResponse.success(ParseUtil.getParserFactory().responseBodyParser(this.mType).convert(response.body()));
                } catch (Exception e2222) {
                    return ANResponse.failed(Utils.getErrorForParse(new ANError(e2222)));
                }
            case PREFETCH:
                try {
                    Okio.buffer(response.body().source()).skip(Long.MAX_VALUE);
                    return ANResponse.success(ANConstants.PREFETCH);
                } catch (Exception e22222) {
                    return ANResponse.failed(Utils.getErrorForParse(new ANError(e22222)));
                }
            default:
                return null;
        }
    }

    public ANError parseNetworkError(ANError aNError) {
        try {
            if (!(aNError.getResponse() == null || aNError.getResponse().body() == null || aNError.getResponse().body().source() == null)) {
                aNError.setErrorBody(Okio.buffer(aNError.getResponse().body().source()).readUtf8());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return aNError;
    }

    public synchronized void deliverError(ANError aNError) {
        try {
            if (!this.isDelivered) {
                if (this.isCancelled) {
                    aNError.setCancellationMessageInError();
                    aNError.setErrorCode(0);
                }
                deliverErrorResponse(aNError);
            }
            this.isDelivered = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return;
    }

    public void deliverResponse(final ANResponse aNResponse) {
        try {
            this.isDelivered = true;
            if (this.isCancelled) {
                ANError aNError = new ANError();
                aNError.setCancellationMessageInError();
                aNError.setErrorCode(0);
                deliverErrorResponse(aNError);
                finish();
            } else if (this.mExecutor != null) {
                this.mExecutor.execute(new Runnable() {
                    public void run() {
                        ANRequest.this.deliverSuccessResponse(aNResponse);
                    }
                });
            } else {
                Core.getInstance().getExecutorSupplier().forMainThreadTasks().execute(new Runnable() {
                    public void run() {
                        ANRequest.this.deliverSuccessResponse(aNResponse);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void deliverSuccessResponse(ANResponse aNResponse) {
        if (this.mJSONObjectRequestListener != null) {
            this.mJSONObjectRequestListener.onResponse((JSONObject) aNResponse.getResult());
        } else if (this.mJSONArrayRequestListener != null) {
            this.mJSONArrayRequestListener.onResponse((JSONArray) aNResponse.getResult());
        } else if (this.mStringRequestListener != null) {
            this.mStringRequestListener.onResponse((String) aNResponse.getResult());
        } else if (this.mBitmapRequestListener != null) {
            this.mBitmapRequestListener.onResponse((Bitmap) aNResponse.getResult());
        } else if (this.mParsedRequestListener != null) {
            this.mParsedRequestListener.onResponse(aNResponse.getResult());
        } else if (this.mOkHttpResponseAndJSONObjectRequestListener != null) {
            this.mOkHttpResponseAndJSONObjectRequestListener.onResponse(aNResponse.getOkHttpResponse(), (JSONObject) aNResponse.getResult());
        } else if (this.mOkHttpResponseAndJSONArrayRequestListener != null) {
            this.mOkHttpResponseAndJSONArrayRequestListener.onResponse(aNResponse.getOkHttpResponse(), (JSONArray) aNResponse.getResult());
        } else if (this.mOkHttpResponseAndStringRequestListener != null) {
            this.mOkHttpResponseAndStringRequestListener.onResponse(aNResponse.getOkHttpResponse(), (String) aNResponse.getResult());
        } else if (this.mOkHttpResponseAndBitmapRequestListener != null) {
            this.mOkHttpResponseAndBitmapRequestListener.onResponse(aNResponse.getOkHttpResponse(), (Bitmap) aNResponse.getResult());
        } else if (this.mOkHttpResponseAndParsedRequestListener != null) {
            this.mOkHttpResponseAndParsedRequestListener.onResponse(aNResponse.getOkHttpResponse(), aNResponse.getResult());
        }
        finish();
    }

    private void deliverErrorResponse(ANError aNError) {
        if (this.mJSONObjectRequestListener != null) {
            this.mJSONObjectRequestListener.onError(aNError);
        } else if (this.mJSONArrayRequestListener != null) {
            this.mJSONArrayRequestListener.onError(aNError);
        } else if (this.mStringRequestListener != null) {
            this.mStringRequestListener.onError(aNError);
        } else if (this.mBitmapRequestListener != null) {
            this.mBitmapRequestListener.onError(aNError);
        } else if (this.mParsedRequestListener != null) {
            this.mParsedRequestListener.onError(aNError);
        } else if (this.mOkHttpResponseListener != null) {
            this.mOkHttpResponseListener.onError(aNError);
        } else if (this.mOkHttpResponseAndJSONObjectRequestListener != null) {
            this.mOkHttpResponseAndJSONObjectRequestListener.onError(aNError);
        } else if (this.mOkHttpResponseAndJSONArrayRequestListener != null) {
            this.mOkHttpResponseAndJSONArrayRequestListener.onError(aNError);
        } else if (this.mOkHttpResponseAndStringRequestListener != null) {
            this.mOkHttpResponseAndStringRequestListener.onError(aNError);
        } else if (this.mOkHttpResponseAndBitmapRequestListener != null) {
            this.mOkHttpResponseAndBitmapRequestListener.onError(aNError);
        } else if (this.mOkHttpResponseAndParsedRequestListener != null) {
            this.mOkHttpResponseAndParsedRequestListener.onError(aNError);
        } else if (this.mDownloadListener != null) {
            this.mDownloadListener.onError(aNError);
        }
    }

    public void deliverOkHttpResponse(final Response response) {
        try {
            this.isDelivered = true;
            if (this.isCancelled) {
                ANError aNError = new ANError();
                aNError.setCancellationMessageInError();
                aNError.setErrorCode(0);
                if (this.mOkHttpResponseListener != null) {
                    this.mOkHttpResponseListener.onError(aNError);
                }
                finish();
            } else if (this.mExecutor != null) {
                this.mExecutor.execute(new Runnable() {
                    public void run() {
                        if (ANRequest.this.mOkHttpResponseListener != null) {
                            ANRequest.this.mOkHttpResponseListener.onResponse(response);
                        }
                        ANRequest.this.finish();
                    }
                });
            } else {
                Core.getInstance().getExecutorSupplier().forMainThreadTasks().execute(new Runnable() {
                    public void run() {
                        if (ANRequest.this.mOkHttpResponseListener != null) {
                            ANRequest.this.mOkHttpResponseListener.onResponse(response);
                        }
                        ANRequest.this.finish();
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public RequestBody getRequestBody() {
        if (this.mApplicationJsonString != null) {
            if (this.customMediaType != null) {
                return RequestBody.create(this.customMediaType, this.mApplicationJsonString);
            }
            return RequestBody.create(JSON_MEDIA_TYPE, this.mApplicationJsonString);
        } else if (this.mStringBody != null) {
            if (this.customMediaType != null) {
                return RequestBody.create(this.customMediaType, this.mStringBody);
            }
            return RequestBody.create(MEDIA_TYPE_MARKDOWN, this.mStringBody);
        } else if (this.mFile != null) {
            if (this.customMediaType != null) {
                return RequestBody.create(this.customMediaType, this.mFile);
            }
            return RequestBody.create(MEDIA_TYPE_MARKDOWN, this.mFile);
        } else if (this.mByte == null) {
            FormBody.Builder builder = new FormBody.Builder();
            try {
                for (Entry entry : this.mBodyParameterMap.entrySet()) {
                    builder.add((String) entry.getKey(), (String) entry.getValue());
                }
                for (Entry entry2 : this.mUrlEncodedFormBodyParameterMap.entrySet()) {
                    builder.addEncoded((String) entry2.getKey(), (String) entry2.getValue());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return builder.build();
        } else if (this.customMediaType != null) {
            return RequestBody.create(this.customMediaType, this.mByte);
        } else {
            return RequestBody.create(MEDIA_TYPE_MARKDOWN, this.mByte);
        }
    }

    public RequestBody getMultiPartRequestBody() {
        MultipartBody.Builder type = new MultipartBody.Builder().setType(this.customMediaType == null ? MultipartBody.FORM : this.customMediaType);
        try {
            for (Entry entry : this.mMultiPartParameterMap.entrySet()) {
                String[] strArr = new String[2];
                strArr[0] = "Content-Disposition";
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("form-data; name=\"");
                stringBuilder.append((String) entry.getKey());
                stringBuilder.append("\"");
                strArr[1] = stringBuilder.toString();
                type.addPart(Headers.of(strArr), RequestBody.create(null, (String) entry.getValue()));
            }
            for (Entry entry2 : this.mMultiPartFileMap.entrySet()) {
                String name = ((File) entry2.getValue()).getName();
                RequestBody create = RequestBody.create(MediaType.parse(Utils.getMimeType(name)), (File) entry2.getValue());
                String[] strArr2 = new String[2];
                strArr2[0] = "Content-Disposition";
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("form-data; name=\"");
                stringBuilder2.append((String) entry2.getKey());
                stringBuilder2.append("\"; filename=\"");
                stringBuilder2.append(name);
                stringBuilder2.append("\"");
                strArr2[1] = stringBuilder2.toString();
                type.addPart(Headers.of(strArr2), create);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return type.build();
    }

    public Headers getHeaders() {
        Headers.Builder builder = new Headers.Builder();
        try {
            if (this.mHeadersMap != null) {
                for (Entry entry : this.mHeadersMap.entrySet()) {
                    String str = (String) entry.getKey();
                    List<String> list = (List) entry.getValue();
                    if (list != null) {
                        for (String add : list) {
                            builder.add(str, add);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return builder.build();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ANRequest{sequenceNumber='");
        stringBuilder.append(this.sequenceNumber);
        stringBuilder.append(", mMethod=");
        stringBuilder.append(this.mMethod);
        stringBuilder.append(", mPriority=");
        stringBuilder.append(this.mPriority);
        stringBuilder.append(", mRequestType=");
        stringBuilder.append(this.mRequestType);
        stringBuilder.append(", mUrl=");
        stringBuilder.append(this.mUrl);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
