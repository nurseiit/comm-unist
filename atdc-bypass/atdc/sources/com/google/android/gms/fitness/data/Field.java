package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class Field extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<Field> CREATOR = new zzq();
    public static final Field FIELD_ACCURACY = zzdc("accuracy");
    public static final Field FIELD_ACTIVITY = zzda("activity");
    public static final Field FIELD_ACTIVITY_CONFIDENCE = zzde("activity_confidence");
    public static final Field FIELD_ALTITUDE = new Field("altitude", 2, Boolean.valueOf(true));
    public static final Field FIELD_AVERAGE = zzdc("average");
    public static final Field FIELD_BPM = zzdc("bpm");
    public static final Field FIELD_CALORIES = zzdc(NUTRIENT_CALORIES);
    public static final Field FIELD_CIRCUMFERENCE = zzdc("circumference");
    public static final Field FIELD_CONFIDENCE = zzdc("confidence");
    public static final Field FIELD_DISTANCE = zzdc("distance");
    public static final Field FIELD_DURATION = zzda("duration");
    public static final Field FIELD_EXERCISE = zzdd("exercise");
    public static final Field FIELD_FOOD_ITEM = zzdd("food_item");
    public static final Field FIELD_HEIGHT = zzdc("height");
    public static final Field FIELD_HIGH_LATITUDE = zzdc("high_latitude");
    public static final Field FIELD_HIGH_LONGITUDE = zzdc("high_longitude");
    public static final Field FIELD_LATITUDE = zzdc("latitude");
    public static final Field FIELD_LONGITUDE = zzdc("longitude");
    public static final Field FIELD_LOW_LATITUDE = zzdc("low_latitude");
    public static final Field FIELD_LOW_LONGITUDE = zzdc("low_longitude");
    public static final Field FIELD_MAX = zzdc("max");
    public static final Field FIELD_MEAL_TYPE = zzda("meal_type");
    public static final Field FIELD_MIN = zzdc("min");
    public static final Field FIELD_NUM_SEGMENTS = zzda("num_segments");
    public static final Field FIELD_NUTRIENTS = zzde("nutrients");
    public static final Field FIELD_OCCURRENCES = zzda("occurrences");
    public static final Field FIELD_PERCENTAGE = zzdc("percentage");
    public static final Field FIELD_REPETITIONS = zzda("repetitions");
    public static final Field FIELD_RESISTANCE = zzdc("resistance");
    public static final Field FIELD_RESISTANCE_TYPE = zzda("resistance_type");
    public static final Field FIELD_REVOLUTIONS = zzda("revolutions");
    public static final Field FIELD_RPM = zzdc("rpm");
    public static final Field FIELD_SPEED = zzdc("speed");
    public static final Field FIELD_STEPS = zzda("steps");
    public static final Field FIELD_STEP_LENGTH = zzdc("step_length");
    public static final Field FIELD_VOLUME = zzdc(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME);
    public static final Field FIELD_WATTS = zzdc("watts");
    public static final Field FIELD_WEIGHT = zzdc("weight");
    public static final int FORMAT_FLOAT = 2;
    public static final int FORMAT_INT32 = 1;
    public static final int FORMAT_MAP = 4;
    public static final int FORMAT_STRING = 3;
    public static final int MEAL_TYPE_BREAKFAST = 1;
    public static final int MEAL_TYPE_DINNER = 3;
    public static final int MEAL_TYPE_LUNCH = 2;
    public static final int MEAL_TYPE_SNACK = 4;
    public static final int MEAL_TYPE_UNKNOWN = 0;
    public static final String NUTRIENT_CALCIUM = "calcium";
    public static final String NUTRIENT_CALORIES = "calories";
    public static final String NUTRIENT_CHOLESTEROL = "cholesterol";
    public static final String NUTRIENT_DIETARY_FIBER = "dietary_fiber";
    public static final String NUTRIENT_IRON = "iron";
    public static final String NUTRIENT_MONOUNSATURATED_FAT = "fat.monounsaturated";
    public static final String NUTRIENT_POLYUNSATURATED_FAT = "fat.polyunsaturated";
    public static final String NUTRIENT_POTASSIUM = "potassium";
    public static final String NUTRIENT_PROTEIN = "protein";
    public static final String NUTRIENT_SATURATED_FAT = "fat.saturated";
    public static final String NUTRIENT_SODIUM = "sodium";
    public static final String NUTRIENT_SUGAR = "sugar";
    public static final String NUTRIENT_TOTAL_CARBS = "carbs.total";
    public static final String NUTRIENT_TOTAL_FAT = "fat.total";
    public static final String NUTRIENT_TRANS_FAT = "fat.trans";
    public static final String NUTRIENT_UNSATURATED_FAT = "fat.unsaturated";
    public static final String NUTRIENT_VITAMIN_A = "vitamin_a";
    public static final String NUTRIENT_VITAMIN_C = "vitamin_c";
    public static final int RESISTANCE_TYPE_BARBELL = 1;
    public static final int RESISTANCE_TYPE_BODY = 6;
    public static final int RESISTANCE_TYPE_CABLE = 2;
    public static final int RESISTANCE_TYPE_DUMBBELL = 3;
    public static final int RESISTANCE_TYPE_KETTLEBELL = 4;
    public static final int RESISTANCE_TYPE_MACHINE = 5;
    public static final int RESISTANCE_TYPE_UNKNOWN = 0;
    public static final Field zzaUA = new Field("sensor_values", 6);
    private static Field zzaUj = zzdb("duration");
    private static Field zzaUk = zzde("activity_duration");
    public static final Field zzaUl = zzde("activity_duration.ascending");
    public static final Field zzaUm = zzde("activity_duration.descending");
    public static final Field zzaUn = new Field("google.android.fitness.StrideModel", 7);
    public static final Field zzaUo = zzdc("elevation.change");
    public static final Field zzaUp = zzde("elevation.gain");
    public static final Field zzaUq = zzde("elevation.loss");
    public static final Field zzaUr = zzdc("floors");
    public static final Field zzaUs = zzde("floor.gain");
    public static final Field zzaUt = zzde("floor.loss");
    public static final Field zzaUu = zzda("sensor_type");
    public static final Field zzaUv = zzda("sensor_types");
    public static final Field zzaUw = new Field("timestamps", 5);
    public static final Field zzaUx = zzda("sample_period");
    public static final Field zzaUy = zzda("num_samples");
    public static final Field zzaUz = zzda("num_dimensions");
    private final int format;
    private final String name;
    private final int versionCode;
    private final Boolean zzaUB;

    public static class zza {
        public static final Field zzaUC = Field.zzdc("x");
        public static final Field zzaUD = Field.zzdc("y");
        public static final Field zzaUE = Field.zzdc("z");
        public static final Field zzaUF = Field.zzdf("debug_session");
        public static final Field zzaUG = Field.zzdf("google.android.fitness.SessionV2");
    }

    Field(int i, String str, int i2, Boolean bool) {
        this.versionCode = i;
        this.name = (String) zzbo.zzu(str);
        this.format = i2;
        this.zzaUB = bool;
    }

    private Field(String str, int i) {
        this(2, str, i, null);
    }

    private Field(String str, int i, Boolean bool) {
        this(2, str, i, bool);
    }

    private static Field zzda(String str) {
        return new Field(str, 1);
    }

    static Field zzdb(String str) {
        return new Field(str, 1, Boolean.valueOf(true));
    }

    static Field zzdc(String str) {
        return new Field(str, 2);
    }

    private static Field zzdd(String str) {
        return new Field(str, 3);
    }

    private static Field zzde(String str) {
        return new Field(str, 4);
    }

    static Field zzdf(String str) {
        return new Field(str, 7, Boolean.valueOf(true));
    }

    public static com.google.android.gms.fitness.data.Field zzm(java.lang.String r2, int r3) {
        /*
        r0 = r2.hashCode();
        switch(r0) {
            case -2131707655: goto L_0x0456;
            case -2083865430: goto L_0x044b;
            case -2006370880: goto L_0x0440;
            case -1992012396: goto L_0x0435;
            case -1859447186: goto L_0x042a;
            case -1655966961: goto L_0x0420;
            case -1595712862: goto L_0x0415;
            case -1579612127: goto L_0x040a;
            case -1579449403: goto L_0x03ff;
            case -1569430471: goto L_0x03f3;
            case -1531570079: goto L_0x03e7;
            case -1440707631: goto L_0x03db;
            case -1439978388: goto L_0x03cf;
            case -1352492506: goto L_0x03c3;
            case -1271636505: goto L_0x03b7;
            case -1248595573: goto L_0x03ab;
            case -1221029593: goto L_0x039f;
            case -1220952307: goto L_0x0393;
            case -1133736764: goto L_0x0388;
            case -1129337776: goto L_0x037c;
            case -1110756780: goto L_0x0370;
            case -921832806: goto L_0x0364;
            case -918978307: goto L_0x0358;
            case -810883302: goto L_0x034c;
            case -803244749: goto L_0x0340;
            case -791592328: goto L_0x0334;
            case -631448035: goto L_0x0329;
            case -626344110: goto L_0x031d;
            case -619868540: goto L_0x0311;
            case -511934137: goto L_0x0305;
            case -494782871: goto L_0x02f9;
            case -452643911: goto L_0x02ed;
            case -437053898: goto L_0x02e1;
            case -277306353: goto L_0x02d5;
            case -266093204: goto L_0x02c9;
            case -228366862: goto L_0x02bd;
            case -168965370: goto L_0x02b1;
            case -126538880: goto L_0x02a5;
            case -28590302: goto L_0x0299;
            case 120: goto L_0x028d;
            case 121: goto L_0x0281;
            case 122: goto L_0x0275;
            case 97759: goto L_0x0269;
            case 107876: goto L_0x025d;
            case 108114: goto L_0x0251;
            case 113135: goto L_0x0245;
            case 66639641: goto L_0x0239;
            case 109641799: goto L_0x022d;
            case 109761319: goto L_0x0221;
            case 112903913: goto L_0x0215;
            case 120904628: goto L_0x0209;
            case 137365935: goto L_0x01fd;
            case 198162679: goto L_0x01f1;
            case 220648413: goto L_0x01e5;
            case 248891292: goto L_0x01d9;
            case 286612066: goto L_0x01ce;
            case 288459765: goto L_0x01c2;
            case 306600408: goto L_0x01b6;
            case 320627489: goto L_0x01aa;
            case 455965230: goto L_0x019f;
            case 475560024: goto L_0x0193;
            case 475560262: goto L_0x0187;
            case 581888402: goto L_0x017b;
            case 623947695: goto L_0x016f;
            case 738210934: goto L_0x0163;
            case 784486594: goto L_0x0157;
            case 811264586: goto L_0x014b;
            case 815736413: goto L_0x013f;
            case 829251210: goto L_0x0133;
            case 833248065: goto L_0x0127;
            case 883161687: goto L_0x011b;
            case 984367650: goto L_0x010f;
            case 998412730: goto L_0x0104;
            case 1136011766: goto L_0x00f8;
            case 1276952063: goto L_0x00ec;
            case 1284575222: goto L_0x00e0;
            case 1284575460: goto L_0x00d4;
            case 1403812644: goto L_0x00c8;
            case 1403812882: goto L_0x00bc;
            case 1527920799: goto L_0x00b0;
            case 1708915229: goto L_0x00a4;
            case 1857734768: goto L_0x0098;
            case 1857897492: goto L_0x008c;
            case 1863800889: goto L_0x0080;
            case 1880897007: goto L_0x0074;
            case 1892583496: goto L_0x0068;
            case 1958191058: goto L_0x005c;
            case 1958191296: goto L_0x0050;
            case 1983072038: goto L_0x0044;
            case 2020153105: goto L_0x0038;
            case 2036550306: goto L_0x002d;
            case 2056323544: goto L_0x0021;
            case 2072582505: goto L_0x0015;
            case 2078370221: goto L_0x0009;
            default: goto L_0x0007;
        };
    L_0x0007:
        goto L_0x0460;
    L_0x0009:
        r0 = "supplemental_oxygen_flow_rate";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0011:
        r0 = 70;
        goto L_0x0461;
    L_0x0015:
        r0 = "cervical_firmness";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x001d:
        r0 = 25;
        goto L_0x0461;
    L_0x0021:
        r0 = "exercise";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0029:
        r0 = 36;
        goto L_0x0461;
    L_0x002d:
        r0 = "altitude";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0035:
        r0 = 6;
        goto L_0x0461;
    L_0x0038:
        r0 = "blood_pressure_systolic_average";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0040:
        r0 = 16;
        goto L_0x0461;
    L_0x0044:
        r0 = "body_position";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x004c:
        r0 = 19;
        goto L_0x0461;
    L_0x0050:
        r0 = "supplemental_oxygen_flow_rate_min";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0058:
        r0 = 73;
        goto L_0x0461;
    L_0x005c:
        r0 = "supplemental_oxygen_flow_rate_max";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0064:
        r0 = 72;
        goto L_0x0461;
    L_0x0068:
        r0 = "menstrual_flow";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0070:
        r0 = 50;
        goto L_0x0461;
    L_0x0074:
        r0 = "oxygen_therapy_administration_mode";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x007c:
        r0 = 64;
        goto L_0x0461;
    L_0x0080:
        r0 = "resistance";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0088:
        r0 = 76;
        goto L_0x0461;
    L_0x008c:
        r0 = "elevation.loss";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0094:
        r0 = 35;
        goto L_0x0461;
    L_0x0098:
        r0 = "elevation.gain";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00a0:
        r0 = 34;
        goto L_0x0461;
    L_0x00a4:
        r0 = "timestamps";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00ac:
        r0 = 65;
        goto L_0x0461;
    L_0x00b0:
        r0 = "sensor_type";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00b8:
        r0 = 67;
        goto L_0x0461;
    L_0x00bc:
        r0 = "blood_pressure_diastolic_min";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00c4:
        r0 = 13;
        goto L_0x0461;
    L_0x00c8:
        r0 = "blood_pressure_diastolic_max";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00d0:
        r0 = 12;
        goto L_0x0461;
    L_0x00d4:
        r0 = "oxygen_saturation_min";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00dc:
        r0 = 62;
        goto L_0x0461;
    L_0x00e0:
        r0 = "oxygen_saturation_max";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00e8:
        r0 = 60;
        goto L_0x0461;
    L_0x00ec:
        r0 = "blood_pressure_diastolic";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x00f4:
        r0 = 10;
        goto L_0x0461;
    L_0x00f8:
        r0 = "sample_period";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0100:
        r0 = 66;
        goto L_0x0461;
    L_0x0104:
        r0 = "activity_confidence";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x010c:
        r0 = 2;
        goto L_0x0461;
    L_0x010f:
        r0 = "repetitions";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0117:
        r0 = 75;
        goto L_0x0461;
    L_0x011b:
        r0 = "body_temperature";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0123:
        r0 = 20;
        goto L_0x0461;
    L_0x0127:
        r0 = "temporal_relation_to_meal";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x012f:
        r0 = 84;
        goto L_0x0461;
    L_0x0133:
        r0 = "confidence";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x013b:
        r0 = 30;
        goto L_0x0461;
    L_0x013f:
        r0 = "oxygen_saturation_system";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0147:
        r0 = 63;
        goto L_0x0461;
    L_0x014b:
        r0 = "revolutions";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0153:
        r0 = 78;
        goto L_0x0461;
    L_0x0157:
        r0 = "occurrences";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x015f:
        r0 = 56;
        goto L_0x0461;
    L_0x0163:
        r0 = "google.android.fitness.StrideModel";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x016b:
        r0 = 83;
        goto L_0x0461;
    L_0x016f:
        r0 = "oxygen_saturation_average";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0177:
        r0 = 59;
        goto L_0x0461;
    L_0x017b:
        r0 = "cervical_mucus_amount";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0183:
        r0 = 26;
        goto L_0x0461;
    L_0x0187:
        r0 = "blood_pressure_systolic_min";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x018f:
        r0 = 18;
        goto L_0x0461;
    L_0x0193:
        r0 = "blood_pressure_systolic_max";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x019b:
        r0 = 17;
        goto L_0x0461;
    L_0x019f:
        r0 = "activity_duration.ascending";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01a7:
        r0 = 4;
        goto L_0x0461;
    L_0x01aa:
        r0 = "cervical_mucus_texture";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01b2:
        r0 = 27;
        goto L_0x0461;
    L_0x01b6:
        r0 = "google.android.fitness.SessionV2";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01be:
        r0 = 93;
        goto L_0x0461;
    L_0x01c2:
        r0 = "distance";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01ca:
        r0 = 31;
        goto L_0x0461;
    L_0x01ce:
        r0 = "activity_duration.descending";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01d6:
        r0 = 5;
        goto L_0x0461;
    L_0x01d9:
        r0 = "blood_glucose_specimen_source";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01e1:
        r0 = 9;
        goto L_0x0461;
    L_0x01e5:
        r0 = "blood_pressure_diastolic_average";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01ed:
        r0 = 11;
        goto L_0x0461;
    L_0x01f1:
        r0 = "low_latitude";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x01f9:
        r0 = 46;
        goto L_0x0461;
    L_0x01fd:
        r0 = "longitude";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0205:
        r0 = 45;
        goto L_0x0461;
    L_0x0209:
        r0 = "sensor_types";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0211:
        r0 = 68;
        goto L_0x0461;
    L_0x0215:
        r0 = "watts";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x021d:
        r0 = 87;
        goto L_0x0461;
    L_0x0221:
        r0 = "steps";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0229:
        r0 = 81;
        goto L_0x0461;
    L_0x022d:
        r0 = "speed";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0235:
        r0 = 80;
        goto L_0x0461;
    L_0x0239:
        r0 = "temporal_relation_to_sleep";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0241:
        r0 = 85;
        goto L_0x0461;
    L_0x0245:
        r0 = "rpm";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x024d:
        r0 = 79;
        goto L_0x0461;
    L_0x0251:
        r0 = "min";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0259:
        r0 = 51;
        goto L_0x0461;
    L_0x025d:
        r0 = "max";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0265:
        r0 = 48;
        goto L_0x0461;
    L_0x0269:
        r0 = "bpm";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0271:
        r0 = 22;
        goto L_0x0461;
    L_0x0275:
        r0 = "z";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x027d:
        r0 = 91;
        goto L_0x0461;
    L_0x0281:
        r0 = "y";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0289:
        r0 = 90;
        goto L_0x0461;
    L_0x028d:
        r0 = "x";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0295:
        r0 = 89;
        goto L_0x0461;
    L_0x0299:
        r0 = "ovulation_test_result";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02a1:
        r0 = 57;
        goto L_0x0461;
    L_0x02a5:
        r0 = "resistance_type";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02ad:
        r0 = 77;
        goto L_0x0461;
    L_0x02b1:
        r0 = "calories";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02b9:
        r0 = 23;
        goto L_0x0461;
    L_0x02bd:
        r0 = "oxygen_saturation_measurement_method";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02c5:
        r0 = 61;
        goto L_0x0461;
    L_0x02c9:
        r0 = "nutrients";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02d1:
        r0 = 55;
        goto L_0x0461;
    L_0x02d5:
        r0 = "circumference";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02dd:
        r0 = 29;
        goto L_0x0461;
    L_0x02e1:
        r0 = "meal_type";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02e9:
        r0 = 49;
        goto L_0x0461;
    L_0x02ed:
        r0 = "step_length";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x02f5:
        r0 = 82;
        goto L_0x0461;
    L_0x02f9:
        r0 = "high_latitude";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0301:
        r0 = 42;
        goto L_0x0461;
    L_0x0305:
        r0 = "sensor_values";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x030d:
        r0 = 69;
        goto L_0x0461;
    L_0x0311:
        r0 = "low_longitude";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0319:
        r0 = 47;
        goto L_0x0461;
    L_0x031d:
        r0 = "high_longitude";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0325:
        r0 = 43;
        goto L_0x0461;
    L_0x0329:
        r0 = "average";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0331:
        r0 = 7;
        goto L_0x0461;
    L_0x0334:
        r0 = "weight";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x033c:
        r0 = 88;
        goto L_0x0461;
    L_0x0340:
        r0 = "blood_pressure_systolic";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0348:
        r0 = 15;
        goto L_0x0461;
    L_0x034c:
        r0 = "volume";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0354:
        r0 = 86;
        goto L_0x0461;
    L_0x0358:
        r0 = "cervical_position";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0360:
        r0 = 28;
        goto L_0x0461;
    L_0x0364:
        r0 = "percentage";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x036c:
        r0 = 74;
        goto L_0x0461;
    L_0x0370:
        r0 = "food_item";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0378:
        r0 = 40;
        goto L_0x0461;
    L_0x037c:
        r0 = "num_samples";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0384:
        r0 = 53;
        goto L_0x0461;
    L_0x0388:
        r0 = "activity_duration";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0390:
        r0 = 3;
        goto L_0x0461;
    L_0x0393:
        r0 = "blood_pressure_measurement_location";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x039b:
        r0 = 14;
        goto L_0x0461;
    L_0x039f:
        r0 = "height";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03a7:
        r0 = 41;
        goto L_0x0461;
    L_0x03ab:
        r0 = "supplemental_oxygen_flow_rate_average";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03b3:
        r0 = 71;
        goto L_0x0461;
    L_0x03b7:
        r0 = "floors";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03bf:
        r0 = 39;
        goto L_0x0461;
    L_0x03c3:
        r0 = "num_dimensions";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03cb:
        r0 = 52;
        goto L_0x0461;
    L_0x03cf:
        r0 = "latitude";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03d7:
        r0 = 44;
        goto L_0x0461;
    L_0x03db:
        r0 = "oxygen_saturation";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03e3:
        r0 = 58;
        goto L_0x0461;
    L_0x03e7:
        r0 = "elevation.change";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03ef:
        r0 = 33;
        goto L_0x0461;
    L_0x03f3:
        r0 = "num_segments";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x03fb:
        r0 = 54;
        goto L_0x0461;
    L_0x03ff:
        r0 = "floor.loss";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0407:
        r0 = 38;
        goto L_0x0461;
    L_0x040a:
        r0 = "floor.gain";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0412:
        r0 = 37;
        goto L_0x0461;
    L_0x0415:
        r0 = "cervical_dilation";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x041d:
        r0 = 24;
        goto L_0x0461;
    L_0x0420:
        r0 = "activity";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0428:
        r0 = 1;
        goto L_0x0461;
    L_0x042a:
        r0 = "blood_glucose_level";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0432:
        r0 = 8;
        goto L_0x0461;
    L_0x0435:
        r0 = "duration";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x043d:
        r0 = 32;
        goto L_0x0461;
    L_0x0440:
        r0 = "body_temperature_measurement_location";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0448:
        r0 = 21;
        goto L_0x0461;
    L_0x044b:
        r0 = "debug_session";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x0453:
        r0 = 92;
        goto L_0x0461;
    L_0x0456:
        r0 = "accuracy";
        r0 = r2.equals(r0);
        if (r0 == 0) goto L_0x0460;
    L_0x045e:
        r0 = 0;
        goto L_0x0461;
    L_0x0460:
        r0 = -1;
    L_0x0461:
        switch(r0) {
            case 0: goto L_0x0582;
            case 1: goto L_0x057f;
            case 2: goto L_0x057c;
            case 3: goto L_0x0579;
            case 4: goto L_0x0576;
            case 5: goto L_0x0573;
            case 6: goto L_0x0570;
            case 7: goto L_0x056d;
            case 8: goto L_0x056a;
            case 9: goto L_0x0567;
            case 10: goto L_0x0564;
            case 11: goto L_0x0561;
            case 12: goto L_0x055e;
            case 13: goto L_0x055b;
            case 14: goto L_0x0558;
            case 15: goto L_0x0555;
            case 16: goto L_0x0552;
            case 17: goto L_0x054f;
            case 18: goto L_0x054c;
            case 19: goto L_0x0549;
            case 20: goto L_0x0546;
            case 21: goto L_0x0543;
            case 22: goto L_0x0540;
            case 23: goto L_0x053d;
            case 24: goto L_0x053a;
            case 25: goto L_0x0537;
            case 26: goto L_0x0534;
            case 27: goto L_0x0531;
            case 28: goto L_0x052e;
            case 29: goto L_0x052b;
            case 30: goto L_0x0528;
            case 31: goto L_0x0525;
            case 32: goto L_0x0522;
            case 33: goto L_0x051f;
            case 34: goto L_0x051c;
            case 35: goto L_0x0519;
            case 36: goto L_0x0516;
            case 37: goto L_0x0513;
            case 38: goto L_0x0510;
            case 39: goto L_0x050d;
            case 40: goto L_0x050a;
            case 41: goto L_0x0507;
            case 42: goto L_0x0504;
            case 43: goto L_0x0501;
            case 44: goto L_0x04fe;
            case 45: goto L_0x04fb;
            case 46: goto L_0x04f8;
            case 47: goto L_0x04f5;
            case 48: goto L_0x04f2;
            case 49: goto L_0x04ef;
            case 50: goto L_0x04ec;
            case 51: goto L_0x04e9;
            case 52: goto L_0x04e6;
            case 53: goto L_0x04e3;
            case 54: goto L_0x04e0;
            case 55: goto L_0x04dd;
            case 56: goto L_0x04da;
            case 57: goto L_0x04d7;
            case 58: goto L_0x04d4;
            case 59: goto L_0x04d1;
            case 60: goto L_0x04ce;
            case 61: goto L_0x04cb;
            case 62: goto L_0x04c8;
            case 63: goto L_0x04c5;
            case 64: goto L_0x04c2;
            case 65: goto L_0x04bf;
            case 66: goto L_0x04bc;
            case 67: goto L_0x04b9;
            case 68: goto L_0x04b6;
            case 69: goto L_0x04b3;
            case 70: goto L_0x04b0;
            case 71: goto L_0x04ad;
            case 72: goto L_0x04aa;
            case 73: goto L_0x04a7;
            case 74: goto L_0x04a4;
            case 75: goto L_0x04a1;
            case 76: goto L_0x049e;
            case 77: goto L_0x049b;
            case 78: goto L_0x0498;
            case 79: goto L_0x0495;
            case 80: goto L_0x0492;
            case 81: goto L_0x048f;
            case 82: goto L_0x048c;
            case 83: goto L_0x0489;
            case 84: goto L_0x0486;
            case 85: goto L_0x0483;
            case 86: goto L_0x0480;
            case 87: goto L_0x047d;
            case 88: goto L_0x047a;
            case 89: goto L_0x0477;
            case 90: goto L_0x0474;
            case 91: goto L_0x0471;
            case 92: goto L_0x046e;
            case 93: goto L_0x046b;
            default: goto L_0x0464;
        };
    L_0x0464:
        r0 = new com.google.android.gms.fitness.data.Field;
        r1 = 0;
        r0.<init>(r2, r3, r1);
        return r0;
    L_0x046b:
        r2 = com.google.android.gms.fitness.data.Field.zza.zzaUG;
        return r2;
    L_0x046e:
        r2 = com.google.android.gms.fitness.data.Field.zza.zzaUF;
        return r2;
    L_0x0471:
        r2 = com.google.android.gms.fitness.data.Field.zza.zzaUE;
        return r2;
    L_0x0474:
        r2 = com.google.android.gms.fitness.data.Field.zza.zzaUD;
        return r2;
    L_0x0477:
        r2 = com.google.android.gms.fitness.data.Field.zza.zzaUC;
        return r2;
    L_0x047a:
        r2 = FIELD_WEIGHT;
        return r2;
    L_0x047d:
        r2 = FIELD_WATTS;
        return r2;
    L_0x0480:
        r2 = FIELD_VOLUME;
        return r2;
    L_0x0483:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_TEMPORAL_RELATION_TO_SLEEP;
        return r2;
    L_0x0486:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_TEMPORAL_RELATION_TO_MEAL;
        return r2;
    L_0x0489:
        r2 = zzaUn;
        return r2;
    L_0x048c:
        r2 = FIELD_STEP_LENGTH;
        return r2;
    L_0x048f:
        r2 = FIELD_STEPS;
        return r2;
    L_0x0492:
        r2 = FIELD_SPEED;
        return r2;
    L_0x0495:
        r2 = FIELD_RPM;
        return r2;
    L_0x0498:
        r2 = FIELD_REVOLUTIONS;
        return r2;
    L_0x049b:
        r2 = FIELD_RESISTANCE_TYPE;
        return r2;
    L_0x049e:
        r2 = FIELD_RESISTANCE;
        return r2;
    L_0x04a1:
        r2 = FIELD_REPETITIONS;
        return r2;
    L_0x04a4:
        r2 = FIELD_PERCENTAGE;
        return r2;
    L_0x04a7:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MIN;
        return r2;
    L_0x04aa:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MAX;
        return r2;
    L_0x04ad:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_AVERAGE;
        return r2;
    L_0x04b0:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE;
        return r2;
    L_0x04b3:
        r2 = zzaUA;
        return r2;
    L_0x04b6:
        r2 = zzaUv;
        return r2;
    L_0x04b9:
        r2 = zzaUu;
        return r2;
    L_0x04bc:
        r2 = zzaUx;
        return r2;
    L_0x04bf:
        r2 = zzaUw;
        return r2;
    L_0x04c2:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE;
        return r2;
    L_0x04c5:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OXYGEN_SATURATION_SYSTEM;
        return r2;
    L_0x04c8:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OXYGEN_SATURATION_MIN;
        return r2;
    L_0x04cb:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD;
        return r2;
    L_0x04ce:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OXYGEN_SATURATION_MAX;
        return r2;
    L_0x04d1:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OXYGEN_SATURATION_AVERAGE;
        return r2;
    L_0x04d4:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OXYGEN_SATURATION;
        return r2;
    L_0x04d7:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_OVULATION_TEST_RESULT;
        return r2;
    L_0x04da:
        r2 = FIELD_OCCURRENCES;
        return r2;
    L_0x04dd:
        r2 = FIELD_NUTRIENTS;
        return r2;
    L_0x04e0:
        r2 = FIELD_NUM_SEGMENTS;
        return r2;
    L_0x04e3:
        r2 = zzaUy;
        return r2;
    L_0x04e6:
        r2 = zzaUz;
        return r2;
    L_0x04e9:
        r2 = FIELD_MIN;
        return r2;
    L_0x04ec:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_MENSTRUAL_FLOW;
        return r2;
    L_0x04ef:
        r2 = FIELD_MEAL_TYPE;
        return r2;
    L_0x04f2:
        r2 = FIELD_MAX;
        return r2;
    L_0x04f5:
        r2 = FIELD_LOW_LONGITUDE;
        return r2;
    L_0x04f8:
        r2 = FIELD_LOW_LATITUDE;
        return r2;
    L_0x04fb:
        r2 = FIELD_LONGITUDE;
        return r2;
    L_0x04fe:
        r2 = FIELD_LATITUDE;
        return r2;
    L_0x0501:
        r2 = FIELD_HIGH_LONGITUDE;
        return r2;
    L_0x0504:
        r2 = FIELD_HIGH_LATITUDE;
        return r2;
    L_0x0507:
        r2 = FIELD_HEIGHT;
        return r2;
    L_0x050a:
        r2 = FIELD_FOOD_ITEM;
        return r2;
    L_0x050d:
        r2 = zzaUr;
        return r2;
    L_0x0510:
        r2 = zzaUt;
        return r2;
    L_0x0513:
        r2 = zzaUs;
        return r2;
    L_0x0516:
        r2 = FIELD_EXERCISE;
        return r2;
    L_0x0519:
        r2 = zzaUq;
        return r2;
    L_0x051c:
        r2 = zzaUp;
        return r2;
    L_0x051f:
        r2 = zzaUo;
        return r2;
    L_0x0522:
        r2 = FIELD_DURATION;
        return r2;
    L_0x0525:
        r2 = FIELD_DISTANCE;
        return r2;
    L_0x0528:
        r2 = FIELD_CONFIDENCE;
        return r2;
    L_0x052b:
        r2 = FIELD_CIRCUMFERENCE;
        return r2;
    L_0x052e:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_CERVICAL_POSITION;
        return r2;
    L_0x0531:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_CERVICAL_MUCUS_TEXTURE;
        return r2;
    L_0x0534:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_CERVICAL_MUCUS_AMOUNT;
        return r2;
    L_0x0537:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_CERVICAL_FIRMNESS;
        return r2;
    L_0x053a:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_CERVICAL_DILATION;
        return r2;
    L_0x053d:
        r2 = FIELD_CALORIES;
        return r2;
    L_0x0540:
        r2 = FIELD_BPM;
        return r2;
    L_0x0543:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION;
        return r2;
    L_0x0546:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BODY_TEMPERATURE;
        return r2;
    L_0x0549:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BODY_POSITION;
        return r2;
    L_0x054c:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC_MIN;
        return r2;
    L_0x054f:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC_MAX;
        return r2;
    L_0x0552:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC_AVERAGE;
        return r2;
    L_0x0555:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC;
        return r2;
    L_0x0558:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION;
        return r2;
    L_0x055b:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC_MIN;
        return r2;
    L_0x055e:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC_MAX;
        return r2;
    L_0x0561:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC_AVERAGE;
        return r2;
    L_0x0564:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC;
        return r2;
    L_0x0567:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE;
        return r2;
    L_0x056a:
        r2 = com.google.android.gms.fitness.data.HealthFields.FIELD_BLOOD_GLUCOSE_LEVEL;
        return r2;
    L_0x056d:
        r2 = FIELD_AVERAGE;
        return r2;
    L_0x0570:
        r2 = FIELD_ALTITUDE;
        return r2;
    L_0x0573:
        r2 = zzaUm;
        return r2;
    L_0x0576:
        r2 = zzaUl;
        return r2;
    L_0x0579:
        r2 = zzaUk;
        return r2;
    L_0x057c:
        r2 = FIELD_ACTIVITY_CONFIDENCE;
        return r2;
    L_0x057f:
        r2 = FIELD_ACTIVITY;
        return r2;
    L_0x0582:
        r2 = FIELD_ACCURACY;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.data.Field.zzm(java.lang.String, int):com.google.android.gms.fitness.data.Field");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Field) {
            Field field = (Field) obj;
            obj = (this.name.equals(field.name) && this.format == field.format) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final int getFormat() {
        return this.format;
    }

    public final String getName() {
        return this.name;
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final Boolean isOptional() {
        return this.zzaUB;
    }

    public final String toString() {
        String str = "%s(%s)";
        Object[] objArr = new Object[2];
        objArr[0] = this.name;
        objArr[1] = this.format == 1 ? "i" : "f";
        return String.format(str, objArr);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getName(), false);
        zzd.zzc(parcel, 2, getFormat());
        zzd.zza(parcel, 3, isOptional(), false);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zzI(parcel, i);
    }
}
