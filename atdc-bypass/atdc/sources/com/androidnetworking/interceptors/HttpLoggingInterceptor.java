package com.androidnetworking.interceptors;

import com.bumptech.glide.load.Key;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;

public class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName(Key.STRING_CHARSET_NAME);
    private volatile Level level;
    private final Logger logger;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface Logger {
        public static final Logger DEFAULT = new Logger() {
            public void log(String str) {
                Platform.get().log(4, str, null);
            }
        };

        void log(String str);
    }

    public HttpLoggingInterceptor() {
        this(Logger.DEFAULT);
    }

    public HttpLoggingInterceptor(Logger logger) {
        this.level = Level.NONE;
        this.logger = logger;
    }

    public HttpLoggingInterceptor setLevel(Level level) {
        if (level == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.level = level;
        return this;
    }

    public Level getLevel() {
        return this.level;
    }

    public Response intercept(Chain chain) throws IOException {
        Chain chain2 = chain;
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain2.proceed(request);
        }
        Object obj = 1;
        Object obj2 = level == Level.BODY ? 1 : null;
        Object obj3 = (obj2 != null || level == Level.HEADERS) ? 1 : null;
        RequestBody body = request.body();
        if (body == null) {
            obj = null;
        }
        Connection connection = chain.connection();
        Object protocol = connection != null ? connection.protocol() : Protocol.HTTP_1_1;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("--> ");
        stringBuilder.append(request.method());
        stringBuilder.append(' ');
        stringBuilder.append(request.url());
        stringBuilder.append(' ');
        stringBuilder.append(protocol);
        String stringBuilder2 = stringBuilder.toString();
        if (obj3 == null && obj != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(stringBuilder2);
            stringBuilder.append(" (");
            stringBuilder.append(body.contentLength());
            stringBuilder.append("-byte body)");
            stringBuilder2 = stringBuilder.toString();
        }
        this.logger.log(stringBuilder2);
        if (obj3 != null) {
            Logger logger;
            if (obj != null) {
                Logger logger2;
                StringBuilder stringBuilder3;
                if (body.contentType() != null) {
                    logger2 = this.logger;
                    stringBuilder3 = new StringBuilder();
                    stringBuilder3.append("Content-Type: ");
                    stringBuilder3.append(body.contentType());
                    logger2.log(stringBuilder3.toString());
                }
                if (body.contentLength() != -1) {
                    logger2 = this.logger;
                    stringBuilder3 = new StringBuilder();
                    stringBuilder3.append("Content-Length: ");
                    stringBuilder3.append(body.contentLength());
                    logger2.log(stringBuilder3.toString());
                }
            }
            Headers headers = request.headers();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                if (!("Content-Type".equalsIgnoreCase(name) || "Content-Length".equalsIgnoreCase(name))) {
                    logger = this.logger;
                    StringBuilder stringBuilder4 = new StringBuilder();
                    stringBuilder4.append(name);
                    stringBuilder4.append(": ");
                    stringBuilder4.append(headers.value(i));
                    logger.log(stringBuilder4.toString());
                }
            }
            StringBuilder stringBuilder5;
            if (obj2 == null || obj == null) {
                logger = this.logger;
                stringBuilder5 = new StringBuilder();
                stringBuilder5.append("--> END ");
                stringBuilder5.append(request.method());
                logger.log(stringBuilder5.toString());
            } else if (bodyEncoded(request.headers())) {
                logger = this.logger;
                stringBuilder5 = new StringBuilder();
                stringBuilder5.append("--> END ");
                stringBuilder5.append(request.method());
                stringBuilder5.append(" (encoded body omitted)");
                logger.log(stringBuilder5.toString());
            } else {
                Buffer buffer = new Buffer();
                body.writeTo(buffer);
                Charset charset = UTF8;
                MediaType contentType = body.contentType();
                if (contentType != null) {
                    charset = contentType.charset(UTF8);
                }
                this.logger.log("");
                if (isPlaintext(buffer)) {
                    this.logger.log(buffer.readString(charset));
                    logger = this.logger;
                    stringBuilder5 = new StringBuilder();
                    stringBuilder5.append("--> END ");
                    stringBuilder5.append(request.method());
                    stringBuilder5.append(" (");
                    stringBuilder5.append(body.contentLength());
                    stringBuilder5.append("-byte body)");
                    logger.log(stringBuilder5.toString());
                } else {
                    logger = this.logger;
                    stringBuilder5 = new StringBuilder();
                    stringBuilder5.append("--> END ");
                    stringBuilder5.append(request.method());
                    stringBuilder5.append(" (binary ");
                    stringBuilder5.append(body.contentLength());
                    stringBuilder5.append("-byte body omitted)");
                    logger.log(stringBuilder5.toString());
                }
            }
        }
        long nanoTime = System.nanoTime();
        try {
            String stringBuilder6;
            String stringBuilder7;
            Response proceed = chain2.proceed(request);
            nanoTime = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody body2 = proceed.body();
            long contentLength = body2.contentLength();
            if (contentLength != -1) {
                StringBuilder stringBuilder8 = new StringBuilder();
                stringBuilder8.append(contentLength);
                stringBuilder8.append("-byte");
                stringBuilder6 = stringBuilder8.toString();
            } else {
                stringBuilder6 = "unknown-length";
            }
            Logger logger3 = this.logger;
            stringBuilder = new StringBuilder();
            stringBuilder.append("<-- ");
            stringBuilder.append(proceed.code());
            stringBuilder.append(' ');
            stringBuilder.append(proceed.message());
            stringBuilder.append(' ');
            stringBuilder.append(proceed.request().url());
            stringBuilder.append(" (");
            stringBuilder.append(nanoTime);
            stringBuilder.append("ms");
            if (obj3 == null) {
                StringBuilder stringBuilder9 = new StringBuilder();
                stringBuilder9.append(", ");
                stringBuilder9.append(stringBuilder6);
                stringBuilder9.append(" body");
                stringBuilder7 = stringBuilder9.toString();
            } else {
                stringBuilder7 = "";
            }
            stringBuilder.append(stringBuilder7);
            stringBuilder.append(')');
            logger3.log(stringBuilder.toString());
            if (obj3 != null) {
                Headers headers2 = proceed.headers();
                int size2 = headers2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Logger logger4 = this.logger;
                    StringBuilder stringBuilder10 = new StringBuilder();
                    stringBuilder10.append(headers2.name(i2));
                    stringBuilder10.append(": ");
                    stringBuilder10.append(headers2.value(i2));
                    logger4.log(stringBuilder10.toString());
                }
                if (obj2 == null || !HttpHeaders.hasBody(proceed)) {
                    this.logger.log("<-- END HTTP");
                } else if (bodyEncoded(proceed.headers())) {
                    this.logger.log("<-- END HTTP (encoded body omitted)");
                } else {
                    BufferedSource source = body2.source();
                    source.request(Long.MAX_VALUE);
                    Buffer buffer2 = source.buffer();
                    Charset charset2 = UTF8;
                    MediaType contentType2 = body2.contentType();
                    if (contentType2 != null) {
                        charset2 = contentType2.charset(UTF8);
                    }
                    Logger logger5;
                    StringBuilder stringBuilder11;
                    if (isPlaintext(buffer2)) {
                        if (contentLength != 0) {
                            this.logger.log("");
                            this.logger.log(buffer2.clone().readString(charset2));
                        }
                        logger5 = this.logger;
                        stringBuilder11 = new StringBuilder();
                        stringBuilder11.append("<-- END HTTP (");
                        stringBuilder11.append(buffer2.size());
                        stringBuilder11.append("-byte body)");
                        logger5.log(stringBuilder11.toString());
                    } else {
                        this.logger.log("");
                        logger5 = this.logger;
                        stringBuilder11 = new StringBuilder();
                        stringBuilder11.append("<-- END HTTP (binary ");
                        stringBuilder11.append(buffer2.size());
                        stringBuilder11.append("-byte body omitted)");
                        logger5.log(stringBuilder11.toString());
                        return proceed;
                    }
                }
            }
            return proceed;
        } catch (Exception e) {
            Logger logger6 = this.logger;
            StringBuilder stringBuilder12 = new StringBuilder();
            stringBuilder12.append("<-- HTTP FAILED: ");
            stringBuilder12.append(e);
            logger6.log(stringBuilder12.toString());
            throw e;
        }
    }

    static boolean isPlaintext(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0, buffer.size() < 64 ? buffer.size() : 64);
            for (int i = 0; i < 16; i++) {
                if (buffer2.exhausted()) {
                    break;
                }
                int readUtf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    private boolean bodyEncoded(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || str.equalsIgnoreCase("identity")) ? false : true;
    }
}
