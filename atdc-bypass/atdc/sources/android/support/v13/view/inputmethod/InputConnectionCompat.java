package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

public final class InputConnectionCompat {
    private static final String COMMIT_CONTENT_ACTION = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String COMMIT_CONTENT_CONTENT_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String COMMIT_CONTENT_DESCRIPTION_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String COMMIT_CONTENT_FLAGS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String COMMIT_CONTENT_LINK_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String COMMIT_CONTENT_OPTS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String COMMIT_CONTENT_RESULT_RECEIVER = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
    public static int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    public interface OnCommitContentListener {
        boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0051  */
    static boolean handlePerformPrivateCommand(@android.support.annotation.Nullable java.lang.String r7, @android.support.annotation.NonNull android.os.Bundle r8, @android.support.annotation.NonNull android.support.v13.view.inputmethod.InputConnectionCompat.OnCommitContentListener r9) {
        /*
        r0 = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
        r7 = android.text.TextUtils.equals(r0, r7);
        r0 = 0;
        if (r7 != 0) goto L_0x000a;
    L_0x0009:
        return r0;
    L_0x000a:
        if (r8 != 0) goto L_0x000d;
    L_0x000c:
        return r0;
    L_0x000d:
        r7 = 0;
        r1 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
        r1 = r8.getParcelable(r1);	 Catch:{ all -> 0x004d }
        r1 = (android.os.ResultReceiver) r1;	 Catch:{ all -> 0x004d }
        r2 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
        r2 = r8.getParcelable(r2);	 Catch:{ all -> 0x004b }
        r2 = (android.net.Uri) r2;	 Catch:{ all -> 0x004b }
        r3 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
        r3 = r8.getParcelable(r3);	 Catch:{ all -> 0x004b }
        r3 = (android.content.ClipDescription) r3;	 Catch:{ all -> 0x004b }
        r4 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
        r4 = r8.getParcelable(r4);	 Catch:{ all -> 0x004b }
        r4 = (android.net.Uri) r4;	 Catch:{ all -> 0x004b }
        r5 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
        r5 = r8.getInt(r5);	 Catch:{ all -> 0x004b }
        r6 = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
        r8 = r8.getParcelable(r6);	 Catch:{ all -> 0x004b }
        r8 = (android.os.Bundle) r8;	 Catch:{ all -> 0x004b }
        r6 = new android.support.v13.view.inputmethod.InputContentInfoCompat;	 Catch:{ all -> 0x004b }
        r6.<init>(r2, r3, r4);	 Catch:{ all -> 0x004b }
        r8 = r9.onCommitContent(r6, r5, r8);	 Catch:{ all -> 0x004b }
        if (r1 == 0) goto L_0x004a;
    L_0x0047:
        r1.send(r8, r7);
    L_0x004a:
        return r8;
    L_0x004b:
        r8 = move-exception;
        goto L_0x004f;
    L_0x004d:
        r8 = move-exception;
        r1 = r7;
    L_0x004f:
        if (r1 == 0) goto L_0x0054;
    L_0x0051:
        r1.send(r0, r7);
    L_0x0054:
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v13.view.inputmethod.InputConnectionCompat.handlePerformPrivateCommand(java.lang.String, android.os.Bundle, android.support.v13.view.inputmethod.InputConnectionCompat$OnCommitContentListener):boolean");
    }

    public static boolean commitContent(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull InputContentInfoCompat inputContentInfoCompat, int i, @Nullable Bundle bundle) {
        Object obj;
        ClipDescription description = inputContentInfoCompat.getDescription();
        for (String hasMimeType : EditorInfoCompat.getContentMimeTypes(editorInfo)) {
            if (description.hasMimeType(hasMimeType)) {
                obj = 1;
                break;
            }
        }
        obj = null;
        if (obj == null) {
            return false;
        }
        if (VERSION.SDK_INT >= 25) {
            return inputConnection.commitContent((InputContentInfo) inputContentInfoCompat.unwrap(), i, bundle);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable(COMMIT_CONTENT_CONTENT_URI_KEY, inputContentInfoCompat.getContentUri());
        bundle2.putParcelable(COMMIT_CONTENT_DESCRIPTION_KEY, inputContentInfoCompat.getDescription());
        bundle2.putParcelable(COMMIT_CONTENT_LINK_URI_KEY, inputContentInfoCompat.getLinkUri());
        bundle2.putInt(COMMIT_CONTENT_FLAGS_KEY, i);
        bundle2.putParcelable(COMMIT_CONTENT_OPTS_KEY, bundle);
        return inputConnection.performPrivateCommand(COMMIT_CONTENT_ACTION, bundle2);
    }

    @NonNull
    public static InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull final OnCommitContentListener onCommitContentListener) {
        if (inputConnection == null) {
            throw new IllegalArgumentException("inputConnection must be non-null");
        } else if (editorInfo == null) {
            throw new IllegalArgumentException("editorInfo must be non-null");
        } else if (onCommitContentListener == null) {
            throw new IllegalArgumentException("onCommitContentListener must be non-null");
        } else if (VERSION.SDK_INT >= 25) {
            return new InputConnectionWrapper(inputConnection, false) {
                public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
                    if (onCommitContentListener.onCommitContent(InputContentInfoCompat.wrap(inputContentInfo), i, bundle)) {
                        return true;
                    }
                    return super.commitContent(inputContentInfo, i, bundle);
                }
            };
        } else {
            if (EditorInfoCompat.getContentMimeTypes(editorInfo).length == 0) {
                return inputConnection;
            }
            return new InputConnectionWrapper(inputConnection, false) {
                public boolean performPrivateCommand(String str, Bundle bundle) {
                    if (InputConnectionCompat.handlePerformPrivateCommand(str, bundle, onCommitContentListener)) {
                        return true;
                    }
                    return super.performPrivateCommand(str, bundle);
                }
            };
        }
    }
}
