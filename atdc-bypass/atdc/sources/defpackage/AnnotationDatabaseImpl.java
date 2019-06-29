package defpackage;

import com.google.inject.AnnotationDatabase;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import roboguice.fragment.FragmentUtil;

/* renamed from: AnnotationDatabaseImpl */
public class AnnotationDatabaseImpl extends AnnotationDatabase {
    public void fillAnnotationClassesAndConstructors(HashMap<String, Map<String, Set<String>>> hashMap) {
    }

    public void fillAnnotationClassesAndMethods(HashMap<String, Map<String, Set<String>>> hashMap) {
    }

    public void fillAnnotationClassesAndFieldsNames(HashMap<String, Map<String, Set<String>>> hashMap) {
        String str = "roboguice.inject.InjectView";
        Map map = (Map) hashMap.get(str);
        if (map == null) {
            map = new HashMap();
            hashMap.put(str, map);
        }
        HashSet hashSet = new HashSet();
        hashSet.add("prof_photo_");
        hashSet.add("lecture_time_");
        hashSet.add("state_check_");
        hashSet.add("change_iamge_");
        hashSet.add("attend_ok_text_");
        hashSet.add("prog_");
        hashSet.add("infomation_group_");
        hashSet.add("lecture_name_");
        hashSet.add("lecture_room_");
        hashSet.add("lecture_pro_");
        hashSet.add("content_time_");
        hashSet.add("ok_button_");
        map.put("com.lotecs.attendcheck.student.AttendActivity", hashSet);
    }

    public void fillClassesContainingInjectionPointSet(HashSet<String> hashSet) {
        hashSet.add("com.lotecs.attendcheck.student.AttendActivity");
    }

    public void fillBindableClasses(HashSet<String> hashSet) {
        hashSet.add("android.widget.ImageButton");
        hashSet.add("android.widget.LinearLayout");
        hashSet.add("android.widget.TextView");
        hashSet.add("android.widget.ProgressBar");
        hashSet.add("android.widget.ImageView");
        if (FragmentUtil.hasNative) {
            hashSet.add("android.app.FragmentManager");
        }
        if (FragmentUtil.hasSupport) {
            hashSet.add("android.support.v4.app.FragmentManager");
        }
    }
}
