package android.support.v4.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
import android.util.Log;

@RequiresApi(19)
class DocumentsContractApi19 {
    private static final int FLAG_VIRTUAL_DOCUMENT = 512;
    private static final String TAG = "DocumentFile";

    DocumentsContractApi19() {
    }

    public static boolean isDocumentUri(Context context, Uri uri) {
        return DocumentsContract.isDocumentUri(context, uri);
    }

    public static boolean isVirtual(Context context, Uri uri) {
        boolean z = false;
        if (!isDocumentUri(context, uri)) {
            return false;
        }
        if ((getFlags(context, uri) & 512) != 0) {
            z = true;
        }
        return z;
    }

    public static String getName(Context context, Uri uri) {
        return queryForString(context, uri, "_display_name", null);
    }

    private static String getRawType(Context context, Uri uri) {
        return queryForString(context, uri, "mime_type", null);
    }

    public static String getType(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        return "vnd.android.document/directory".equals(rawType) ? null : rawType;
    }

    public static long getFlags(Context context, Uri uri) {
        return queryForLong(context, uri, "flags", 0);
    }

    public static boolean isDirectory(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(getRawType(context, uri));
    }

    public static boolean isFile(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        return ("vnd.android.document/directory".equals(rawType) || TextUtils.isEmpty(rawType)) ? false : true;
    }

    public static long lastModified(Context context, Uri uri) {
        return queryForLong(context, uri, "last_modified", 0);
    }

    public static long length(Context context, Uri uri) {
        return queryForLong(context, uri, "_size", 0);
    }

    public static boolean canRead(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(getRawType(context, uri));
    }

    public static boolean canWrite(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String rawType = getRawType(context, uri);
        int queryForInt = queryForInt(context, uri, "flags", 0);
        if (TextUtils.isEmpty(rawType)) {
            return false;
        }
        if ((queryForInt & 4) != 0) {
            return true;
        }
        if ("vnd.android.document/directory".equals(rawType) && (queryForInt & 8) != 0) {
            return true;
        }
        if (TextUtils.isEmpty(rawType) || (queryForInt & 2) == 0) {
            return false;
        }
        return true;
    }

    public static boolean exists(Context context, Uri uri) {
        Object e;
        String str;
        StringBuilder stringBuilder;
        Throwable th;
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = true;
        AutoCloseable autoCloseable = null;
        try {
            Cursor query = contentResolver.query(uri, new String[]{"document_id"}, null, null, null);
            try {
                if (query.getCount() <= 0) {
                    z = false;
                }
                closeQuietly(query);
                return z;
            } catch (Exception e2) {
                e = e2;
                autoCloseable = query;
                try {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Failed query: ");
                    stringBuilder.append(e);
                    Log.w(str, stringBuilder.toString());
                    closeQuietly(autoCloseable);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(autoCloseable);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                autoCloseable = query;
                closeQuietly(autoCloseable);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Failed query: ");
            stringBuilder.append(e);
            Log.w(str, stringBuilder.toString());
            closeQuietly(autoCloseable);
            return false;
        }
    }

    private static String queryForString(Context context, Uri uri, String str, String str2) {
        Object e;
        String str3;
        StringBuilder stringBuilder;
        Throwable th;
        AutoCloseable autoCloseable = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                if (!query.moveToFirst() || query.isNull(0)) {
                    closeQuietly(query);
                    return str2;
                }
                String string = query.getString(0);
                closeQuietly(query);
                return string;
            } catch (Exception e2) {
                e = e2;
                autoCloseable = query;
                try {
                    str3 = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Failed query: ");
                    stringBuilder.append(e);
                    Log.w(str3, stringBuilder.toString());
                    closeQuietly(autoCloseable);
                    return str2;
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(autoCloseable);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                autoCloseable = query;
                closeQuietly(autoCloseable);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            str3 = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Failed query: ");
            stringBuilder.append(e);
            Log.w(str3, stringBuilder.toString());
            closeQuietly(autoCloseable);
            return str2;
        }
    }

    private static int queryForInt(Context context, Uri uri, String str, int i) {
        return (int) queryForLong(context, uri, str, (long) i);
    }

    private static long queryForLong(Context context, Uri uri, String str, long j) {
        Object e;
        String str2;
        StringBuilder stringBuilder;
        Throwable th;
        AutoCloseable autoCloseable = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                if (!query.moveToFirst() || query.isNull(0)) {
                    closeQuietly(query);
                    return j;
                }
                long j2 = query.getLong(0);
                closeQuietly(query);
                return j2;
            } catch (Exception e2) {
                e = e2;
                autoCloseable = query;
                try {
                    str2 = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Failed query: ");
                    stringBuilder.append(e);
                    Log.w(str2, stringBuilder.toString());
                    closeQuietly(autoCloseable);
                    return j;
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(autoCloseable);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                autoCloseable = query;
                closeQuietly(autoCloseable);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            str2 = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Failed query: ");
            stringBuilder.append(e);
            Log.w(str2, stringBuilder.toString());
            closeQuietly(autoCloseable);
            return j;
        }
    }

    private static void closeQuietly(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }
}
