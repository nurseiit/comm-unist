package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class DigitalDocumentPermissionBuilder extends IndexableBuilder<DigitalDocumentPermissionBuilder> {
    public static final String COMMENT_PERMISSION = "CommentPermission";
    public static final String READ_PERMISSION = "ReadPermission";
    public static final String WRITE_PERMISSION = "WritePermission";

    DigitalDocumentPermissionBuilder() {
        super("DigitalDocumentPermission");
    }

    public final DigitalDocumentPermissionBuilder setGrantee(@NonNull PersonBuilder... personBuilderArr) {
        return (DigitalDocumentPermissionBuilder) put("grantee", (IndexableBuilder[]) personBuilderArr);
    }

    public final DigitalDocumentPermissionBuilder setPermissionType(@NonNull String str) {
        return (DigitalDocumentPermissionBuilder) put("permissionType", str);
    }
}
