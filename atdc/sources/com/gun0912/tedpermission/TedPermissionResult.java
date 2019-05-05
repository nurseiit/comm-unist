package com.gun0912.tedpermission;

import com.gun0912.tedpermission.util.ObjectUtils;
import java.util.ArrayList;

public class TedPermissionResult {
    private ArrayList<String> deniedPermissions;
    private boolean granted;

    public TedPermissionResult(ArrayList<String> arrayList) {
        this.granted = ObjectUtils.isEmpty(arrayList);
        this.deniedPermissions = arrayList;
    }

    public boolean isGranted() {
        return this.granted;
    }

    public ArrayList<String> getDeniedPermissions() {
        return this.deniedPermissions;
    }
}
