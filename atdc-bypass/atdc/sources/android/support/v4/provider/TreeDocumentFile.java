package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.support.annotation.RequiresApi;

@RequiresApi(21)
class TreeDocumentFile extends DocumentFile {
    private Context mContext;
    private Uri mUri;

    TreeDocumentFile(DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.mContext = context;
        this.mUri = uri;
    }

    public DocumentFile createFile(String str, String str2) {
        Uri createFile = createFile(this.mContext, this.mUri, str, str2);
        return createFile != null ? new TreeDocumentFile(this, this.mContext, createFile) : null;
    }

    private static Uri createFile(Context context, Uri uri, String str, String str2) {
        try {
            return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    public DocumentFile createDirectory(String str) {
        Uri createFile = createFile(this.mContext, this.mUri, "vnd.android.document/directory", str);
        return createFile != null ? new TreeDocumentFile(this, this.mContext, createFile) : null;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public String getName() {
        return DocumentsContractApi19.getName(this.mContext, this.mUri);
    }

    public String getType() {
        return DocumentsContractApi19.getType(this.mContext, this.mUri);
    }

    public boolean isDirectory() {
        return DocumentsContractApi19.isDirectory(this.mContext, this.mUri);
    }

    public boolean isFile() {
        return DocumentsContractApi19.isFile(this.mContext, this.mUri);
    }

    public boolean isVirtual() {
        return DocumentsContractApi19.isVirtual(this.mContext, this.mUri);
    }

    public long lastModified() {
        return DocumentsContractApi19.lastModified(this.mContext, this.mUri);
    }

    public long length() {
        return DocumentsContractApi19.length(this.mContext, this.mUri);
    }

    public boolean canRead() {
        return DocumentsContractApi19.canRead(this.mContext, this.mUri);
    }

    public boolean canWrite() {
        return DocumentsContractApi19.canWrite(this.mContext, this.mUri);
    }

    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.mContext.getContentResolver(), this.mUri);
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean exists() {
        return DocumentsContractApi19.exists(this.mContext, this.mUri);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0073 A:{LOOP_END, LOOP:1: B:19:0x0070->B:21:0x0073} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0073 A:{LOOP_END, LOOP:1: B:19:0x0070->B:21:0x0073} */
    public android.support.v4.provider.DocumentFile[] listFiles() {
        /*
        r9 = this;
        r0 = r9.mContext;
        r1 = r0.getContentResolver();
        r0 = r9.mUri;
        r2 = r9.mUri;
        r2 = android.provider.DocumentsContract.getDocumentId(r2);
        r2 = android.provider.DocumentsContract.buildChildDocumentsUriUsingTree(r0, r2);
        r0 = new java.util.ArrayList;
        r0.<init>();
        r3 = 1;
        r7 = 0;
        r8 = 0;
        r3 = new java.lang.String[r3];	 Catch:{ Exception -> 0x0047 }
        r4 = "document_id";
        r3[r7] = r4;	 Catch:{ Exception -> 0x0047 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r1 = r1.query(r2, r3, r4, r5, r6);	 Catch:{ Exception -> 0x0047 }
    L_0x0027:
        r2 = r1.moveToNext();	 Catch:{ Exception -> 0x0042, all -> 0x003f }
        if (r2 == 0) goto L_0x003b;
    L_0x002d:
        r2 = r1.getString(r7);	 Catch:{ Exception -> 0x0042, all -> 0x003f }
        r3 = r9.mUri;	 Catch:{ Exception -> 0x0042, all -> 0x003f }
        r2 = android.provider.DocumentsContract.buildDocumentUriUsingTree(r3, r2);	 Catch:{ Exception -> 0x0042, all -> 0x003f }
        r0.add(r2);	 Catch:{ Exception -> 0x0042, all -> 0x003f }
        goto L_0x0027;
    L_0x003b:
        closeQuietly(r1);
        goto L_0x0061;
    L_0x003f:
        r0 = move-exception;
        r8 = r1;
        goto L_0x0082;
    L_0x0042:
        r2 = move-exception;
        r8 = r1;
        goto L_0x0048;
    L_0x0045:
        r0 = move-exception;
        goto L_0x0082;
    L_0x0047:
        r2 = move-exception;
    L_0x0048:
        r1 = "DocumentFile";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0045 }
        r3.<init>();	 Catch:{ all -> 0x0045 }
        r4 = "Failed query: ";
        r3.append(r4);	 Catch:{ all -> 0x0045 }
        r3.append(r2);	 Catch:{ all -> 0x0045 }
        r2 = r3.toString();	 Catch:{ all -> 0x0045 }
        android.util.Log.w(r1, r2);	 Catch:{ all -> 0x0045 }
        closeQuietly(r8);
    L_0x0061:
        r1 = r0.size();
        r1 = new android.net.Uri[r1];
        r0 = r0.toArray(r1);
        r0 = (android.net.Uri[]) r0;
        r1 = r0.length;
        r1 = new android.support.v4.provider.DocumentFile[r1];
    L_0x0070:
        r2 = r0.length;
        if (r7 >= r2) goto L_0x0081;
    L_0x0073:
        r2 = new android.support.v4.provider.TreeDocumentFile;
        r3 = r9.mContext;
        r4 = r0[r7];
        r2.<init>(r9, r3, r4);
        r1[r7] = r2;
        r7 = r7 + 1;
        goto L_0x0070;
    L_0x0081:
        return r1;
    L_0x0082:
        closeQuietly(r8);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.TreeDocumentFile.listFiles():android.support.v4.provider.DocumentFile[]");
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

    public boolean renameTo(String str) {
        try {
            Uri renameDocument = DocumentsContract.renameDocument(this.mContext.getContentResolver(), this.mUri, str);
            if (renameDocument == null) {
                return false;
            }
            this.mUri = renameDocument;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
