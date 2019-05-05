package com.google.android.gms.fitness.data;

public final class zzm {
    private static DataType[] zzaTY = new DataType[]{DataType.zzaTN, DataType.TYPE_WORKOUT_EXERCISE, DataType.TYPE_ACTIVITY_SAMPLE, DataType.TYPE_ACTIVITY_SAMPLES, DataType.TYPE_ACTIVITY_SEGMENT, DataType.AGGREGATE_ACTIVITY_SUMMARY, HealthDataTypes.TYPE_BASAL_BODY_TEMPERATURE, HealthDataTypes.AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY, HealthDataTypes.TYPE_BLOOD_GLUCOSE, HealthDataTypes.AGGREGATE_BLOOD_GLUCOSE_SUMMARY, HealthDataTypes.TYPE_BLOOD_PRESSURE, HealthDataTypes.AGGREGATE_BLOOD_PRESSURE_SUMMARY, DataType.TYPE_BODY_FAT_PERCENTAGE, DataType.AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY, DataType.zzaTR, DataType.zzaTT, HealthDataTypes.TYPE_BODY_TEMPERATURE, HealthDataTypes.AGGREGATE_BODY_TEMPERATURE_SUMMARY, DataType.zzaTQ, DataType.zzaTU, DataType.TYPE_BASAL_METABOLIC_RATE, DataType.AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY, DataType.TYPE_CALORIES_CONSUMED, DataType.TYPE_CALORIES_EXPENDED, HealthDataTypes.TYPE_CERVICAL_MUCUS, HealthDataTypes.TYPE_CERVICAL_POSITION, DataType.TYPE_CYCLING_PEDALING_CADENCE, DataType.TYPE_CYCLING_PEDALING_CUMULATIVE, DataType.TYPE_CYCLING_WHEEL_REVOLUTION, DataType.TYPE_CYCLING_WHEEL_RPM, DataType.TYPE_DISTANCE_CUMULATIVE, DataType.TYPE_DISTANCE_DELTA, DataType.zzaTM, DataType.zzaTS, DataType.TYPE_HEART_RATE_BPM, DataType.AGGREGATE_HEART_RATE_SUMMARY, DataType.TYPE_HEIGHT, DataType.AGGREGATE_HEIGHT_SUMMARY, DataType.AGGREGATE_LOCATION_BOUNDING_BOX, DataType.TYPE_LOCATION_SAMPLE, DataType.TYPE_LOCATION_TRACK, HealthDataTypes.TYPE_MENSTRUATION, DataType.TYPE_NUTRITION, DataType.TYPE_HYDRATION, DataType.AGGREGATE_NUTRITION_SUMMARY, HealthDataTypes.TYPE_OVULATION_TEST, HealthDataTypes.TYPE_OXYGEN_SATURATION, HealthDataTypes.AGGREGATE_OXYGEN_SATURATION_SUMMARY, DataType.TYPE_POWER_SAMPLE, DataType.AGGREGATE_POWER_SUMMARY, DataType.zzaTP, DataType.zzaTO, DataType.TYPE_SPEED, DataType.AGGREGATE_SPEED_SUMMARY, DataType.TYPE_STEP_COUNT_CADENCE, DataType.zzaTL, DataType.TYPE_STEP_COUNT_CUMULATIVE, DataType.TYPE_STEP_COUNT_DELTA, DataType.zzaTK, HealthDataTypes.TYPE_VAGINAL_SPOTTING, DataType.TYPE_WEIGHT, DataType.AGGREGATE_WEIGHT_SUMMARY};
    private static DataType[] zzaTZ = new DataType[]{HealthDataTypes.TYPE_BASAL_BODY_TEMPERATURE, HealthDataTypes.AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY, HealthDataTypes.TYPE_BLOOD_GLUCOSE, HealthDataTypes.AGGREGATE_BLOOD_GLUCOSE_SUMMARY, HealthDataTypes.TYPE_BLOOD_PRESSURE, HealthDataTypes.AGGREGATE_BLOOD_PRESSURE_SUMMARY, HealthDataTypes.TYPE_BODY_TEMPERATURE, HealthDataTypes.AGGREGATE_BODY_TEMPERATURE_SUMMARY, HealthDataTypes.TYPE_CERVICAL_MUCUS, HealthDataTypes.TYPE_CERVICAL_POSITION, HealthDataTypes.TYPE_MENSTRUATION, HealthDataTypes.TYPE_OVULATION_TEST, HealthDataTypes.TYPE_OXYGEN_SATURATION, HealthDataTypes.AGGREGATE_OXYGEN_SATURATION_SUMMARY, HealthDataTypes.TYPE_VAGINAL_SPOTTING};

    public static com.google.android.gms.fitness.data.DataType zzcZ(java.lang.String r1) {
        /*
        r0 = r1.hashCode();
        switch(r0) {
            case -2060095039: goto L_0x02ed;
            case -2027664088: goto L_0x02e2;
            case -2023954015: goto L_0x02d7;
            case -1939429191: goto L_0x02cc;
            case -1783842905: goto L_0x02c2;
            case -1757812901: goto L_0x02b7;
            case -1659958877: goto L_0x02ac;
            case -1487055015: goto L_0x02a2;
            case -1466904157: goto L_0x0297;
            case -1431431801: goto L_0x028b;
            case -1248818137: goto L_0x027f;
            case -1196687875: goto L_0x0273;
            case -1102520626: goto L_0x0267;
            case -1099695423: goto L_0x025c;
            case -1091068721: goto L_0x0250;
            case -1063046895: goto L_0x0244;
            case -922976890: goto L_0x0238;
            case -900592674: goto L_0x022c;
            case -886569606: goto L_0x0220;
            case -777285735: goto L_0x0214;
            case -661631456: goto L_0x0208;
            case -424876584: goto L_0x01fc;
            case -362418992: goto L_0x01f0;
            case -217611775: goto L_0x01e4;
            case -185830635: goto L_0x01d8;
            case -177293656: goto L_0x01cc;
            case -164586193: goto L_0x01c1;
            case -98150574: goto L_0x01b5;
            case -56824761: goto L_0x01a9;
            case -43729332: goto L_0x019d;
            case 2484093: goto L_0x0191;
            case 53773386: goto L_0x0185;
            case 269180370: goto L_0x017a;
            case 295793957: goto L_0x016e;
            case 296250623: goto L_0x0162;
            case 324760871: goto L_0x0156;
            case 378060028: goto L_0x014b;
            case 529727579: goto L_0x013f;
            case 634821360: goto L_0x0133;
            case 657433501: goto L_0x0127;
            case 682891187: goto L_0x011b;
            case 841663855: goto L_0x0110;
            case 877955159: goto L_0x0104;
            case 899666941: goto L_0x00f8;
            case 936279698: goto L_0x00ec;
            case 946706510: goto L_0x00e0;
            case 946938859: goto L_0x00d4;
            case 1098265835: goto L_0x00c8;
            case 1111714923: goto L_0x00bc;
            case 1214093899: goto L_0x00b0;
            case 1404118825: goto L_0x00a4;
            case 1439932546: goto L_0x0098;
            case 1483133089: goto L_0x008d;
            case 1524007137: goto L_0x0081;
            case 1633152752: goto L_0x0075;
            case 1674865156: goto L_0x0069;
            case 1819660853: goto L_0x005d;
            case 1921738212: goto L_0x0051;
            case 1925848149: goto L_0x0045;
            case 1975902189: goto L_0x0039;
            case 1980033842: goto L_0x002d;
            case 2051843553: goto L_0x0021;
            case 2053496735: goto L_0x0015;
            case 2131809416: goto L_0x0009;
            default: goto L_0x0007;
        };
    L_0x0007:
        goto L_0x02f8;
    L_0x0009:
        r0 = "com.google.body.temperature.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0011:
        r1 = 17;
        goto L_0x02f9;
    L_0x0015:
        r0 = "com.google.speed";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x001d:
        r1 = 52;
        goto L_0x02f9;
    L_0x0021:
        r0 = "com.google.oxygen_saturation.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0029:
        r1 = 47;
        goto L_0x02f9;
    L_0x002d:
        r0 = "com.google.internal.session.debug";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0035:
        r1 = 53;
        goto L_0x02f9;
    L_0x0039:
        r0 = "com.google.cervical_mucus";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0041:
        r1 = 24;
        goto L_0x02f9;
    L_0x0045:
        r0 = "com.google.cervical_position";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x004d:
        r1 = 25;
        goto L_0x02f9;
    L_0x0051:
        r0 = "com.google.distance.cumulative";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0059:
        r1 = 30;
        goto L_0x02f9;
    L_0x005d:
        r0 = "com.google.body.waist.circumference.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0065:
        r1 = 19;
        goto L_0x02f9;
    L_0x0069:
        r0 = "com.google.body.hip.circumference.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0071:
        r1 = 15;
        goto L_0x02f9;
    L_0x0075:
        r0 = "com.google.nutrition";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x007d:
        r1 = 42;
        goto L_0x02f9;
    L_0x0081:
        r0 = "com.google.cycling.wheel_revolution.cumulative";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0089:
        r1 = 28;
        goto L_0x02f9;
    L_0x008d:
        r0 = "com.google.body.temperature.basal";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0095:
        r1 = 6;
        goto L_0x02f9;
    L_0x0098:
        r0 = "com.google.ovulation_test";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00a0:
        r1 = 45;
        goto L_0x02f9;
    L_0x00a4:
        r0 = "com.google.oxygen_saturation";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00ac:
        r1 = 46;
        goto L_0x02f9;
    L_0x00b0:
        r0 = "com.google.vaginal_spotting";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00b8:
        r1 = 61;
        goto L_0x02f9;
    L_0x00bc:
        r0 = "com.google.body.fat.percentage.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00c4:
        r1 = 13;
        goto L_0x02f9;
    L_0x00c8:
        r0 = "com.google.floor_change";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00d0:
        r1 = 32;
        goto L_0x02f9;
    L_0x00d4:
        r0 = "com.google.stride_model";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00dc:
        r1 = 60;
        goto L_0x02f9;
    L_0x00e0:
        r0 = "com.google.hydration";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00e8:
        r1 = 43;
        goto L_0x02f9;
    L_0x00ec:
        r0 = "com.google.blood_pressure";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x00f4:
        r1 = 11;
        goto L_0x02f9;
    L_0x00f8:
        r0 = "com.google.calories.expended";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0100:
        r1 = 23;
        goto L_0x02f9;
    L_0x0104:
        r0 = "com.google.speed.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x010c:
        r1 = 55;
        goto L_0x02f9;
    L_0x0110:
        r0 = "com.google.activity.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0118:
        r1 = 5;
        goto L_0x02f9;
    L_0x011b:
        r0 = "com.google.body.fat.percentage";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0123:
        r1 = 8;
        goto L_0x02f9;
    L_0x0127:
        r0 = "com.google.step_count.cumulative";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x012f:
        r1 = 57;
        goto L_0x02f9;
    L_0x0133:
        r0 = "com.google.sensor.const_rate_events";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x013b:
        r1 = 50;
        goto L_0x02f9;
    L_0x013f:
        r0 = "com.google.power.sample";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0147:
        r1 = 48;
        goto L_0x02f9;
    L_0x014b:
        r0 = "com.google.activity.segment";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0153:
        r1 = 4;
        goto L_0x02f9;
    L_0x0156:
        r0 = "com.google.step_count.cadence";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x015e:
        r1 = 56;
        goto L_0x02f9;
    L_0x0162:
        r0 = "com.google.calories.bmr.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x016a:
        r1 = 21;
        goto L_0x02f9;
    L_0x016e:
        r0 = "com.google.sensor.events";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0176:
        r1 = 51;
        goto L_0x02f9;
    L_0x017a:
        r0 = "com.google.activity.samples";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0182:
        r1 = 3;
        goto L_0x02f9;
    L_0x0185:
        r0 = "com.google.blood_pressure.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x018d:
        r1 = 12;
        goto L_0x02f9;
    L_0x0191:
        r0 = "com.google.body.waist.circumference";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0199:
        r1 = 18;
        goto L_0x02f9;
    L_0x019d:
        r0 = "com.google.body.hip.circumference";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01a5:
        r1 = 14;
        goto L_0x02f9;
    L_0x01a9:
        r0 = "com.google.calories.bmr";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01b1:
        r1 = 20;
        goto L_0x02f9;
    L_0x01b5:
        r0 = "com.google.heart_rate.bpm";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01bd:
        r1 = 34;
        goto L_0x02f9;
    L_0x01c1:
        r0 = "com.google.activity.exercise";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01c9:
        r1 = 1;
        goto L_0x02f9;
    L_0x01cc:
        r0 = "com.google.nutrition.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01d4:
        r1 = 44;
        goto L_0x02f9;
    L_0x01d8:
        r0 = "com.google.power.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01e0:
        r1 = 49;
        goto L_0x02f9;
    L_0x01e4:
        r0 = "com.google.blood_glucose";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01ec:
        r1 = 9;
        goto L_0x02f9;
    L_0x01f0:
        r0 = "com.google.body.temperature";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x01f8:
        r1 = 16;
        goto L_0x02f9;
    L_0x01fc:
        r0 = "com.google.weight.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0204:
        r1 = 63;
        goto L_0x02f9;
    L_0x0208:
        r0 = "com.google.weight";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0210:
        r1 = 62;
        goto L_0x02f9;
    L_0x0214:
        r0 = "com.google.heart_rate.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x021c:
        r1 = 35;
        goto L_0x02f9;
    L_0x0220:
        r0 = "com.google.location.track";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0228:
        r1 = 40;
        goto L_0x02f9;
    L_0x022c:
        r0 = "com.google.cycling.pedaling.cadence";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0234:
        r1 = 26;
        goto L_0x02f9;
    L_0x0238:
        r0 = "com.google.cycling.pedaling.cumulative";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0240:
        r1 = 27;
        goto L_0x02f9;
    L_0x0244:
        r0 = "com.google.step_length";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x024c:
        r1 = 59;
        goto L_0x02f9;
    L_0x0250:
        r0 = "com.google.height";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0258:
        r1 = 36;
        goto L_0x02f9;
    L_0x025c:
        r0 = "com.google.activity.sample";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0264:
        r1 = 2;
        goto L_0x02f9;
    L_0x0267:
        r0 = "com.google.step_count.delta";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x026f:
        r1 = 58;
        goto L_0x02f9;
    L_0x0273:
        r0 = "com.google.internal.session.v2";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x027b:
        r1 = 54;
        goto L_0x02f9;
    L_0x027f:
        r0 = "com.google.distance.delta";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0287:
        r1 = 31;
        goto L_0x02f9;
    L_0x028b:
        r0 = "com.google.height.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x0293:
        r1 = 37;
        goto L_0x02f9;
    L_0x0297:
        r0 = "com.google.floor_change.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x029f:
        r1 = 33;
        goto L_0x02f9;
    L_0x02a2:
        r0 = "com.google.body.temperature.basal.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02aa:
        r1 = 7;
        goto L_0x02f9;
    L_0x02ac:
        r0 = "com.google.menstruation";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02b4:
        r1 = 41;
        goto L_0x02f9;
    L_0x02b7:
        r0 = "com.google.location.sample";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02bf:
        r1 = 39;
        goto L_0x02f9;
    L_0x02c2:
        r0 = "com.google.accelerometer";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02ca:
        r1 = 0;
        goto L_0x02f9;
    L_0x02cc:
        r0 = "com.google.blood_glucose.summary";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02d4:
        r1 = 10;
        goto L_0x02f9;
    L_0x02d7:
        r0 = "com.google.location.bounding_box";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02df:
        r1 = 38;
        goto L_0x02f9;
    L_0x02e2:
        r0 = "com.google.calories.consumed";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02ea:
        r1 = 22;
        goto L_0x02f9;
    L_0x02ed:
        r0 = "com.google.cycling.wheel_revolution.rpm";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x02f8;
    L_0x02f5:
        r1 = 29;
        goto L_0x02f9;
    L_0x02f8:
        r1 = -1;
    L_0x02f9:
        switch(r1) {
            case 0: goto L_0x03bb;
            case 1: goto L_0x03b8;
            case 2: goto L_0x03b5;
            case 3: goto L_0x03b2;
            case 4: goto L_0x03af;
            case 5: goto L_0x03ac;
            case 6: goto L_0x03a9;
            case 7: goto L_0x03a6;
            case 8: goto L_0x03a3;
            case 9: goto L_0x03a0;
            case 10: goto L_0x039d;
            case 11: goto L_0x039a;
            case 12: goto L_0x0397;
            case 13: goto L_0x0394;
            case 14: goto L_0x0391;
            case 15: goto L_0x038e;
            case 16: goto L_0x038b;
            case 17: goto L_0x0388;
            case 18: goto L_0x0385;
            case 19: goto L_0x0382;
            case 20: goto L_0x037f;
            case 21: goto L_0x037c;
            case 22: goto L_0x0379;
            case 23: goto L_0x0376;
            case 24: goto L_0x0373;
            case 25: goto L_0x0370;
            case 26: goto L_0x036d;
            case 27: goto L_0x036a;
            case 28: goto L_0x0367;
            case 29: goto L_0x0364;
            case 30: goto L_0x0361;
            case 31: goto L_0x035e;
            case 32: goto L_0x035b;
            case 33: goto L_0x0358;
            case 34: goto L_0x0355;
            case 35: goto L_0x0352;
            case 36: goto L_0x034f;
            case 37: goto L_0x034c;
            case 38: goto L_0x0349;
            case 39: goto L_0x0346;
            case 40: goto L_0x0343;
            case 41: goto L_0x0340;
            case 42: goto L_0x033d;
            case 43: goto L_0x033a;
            case 44: goto L_0x0337;
            case 45: goto L_0x0334;
            case 46: goto L_0x0331;
            case 47: goto L_0x032e;
            case 48: goto L_0x032b;
            case 49: goto L_0x0328;
            case 50: goto L_0x0325;
            case 51: goto L_0x0322;
            case 52: goto L_0x031f;
            case 53: goto L_0x031c;
            case 54: goto L_0x0319;
            case 55: goto L_0x0316;
            case 56: goto L_0x0313;
            case 57: goto L_0x0310;
            case 58: goto L_0x030d;
            case 59: goto L_0x030a;
            case 60: goto L_0x0307;
            case 61: goto L_0x0304;
            case 62: goto L_0x0301;
            case 63: goto L_0x02fe;
            default: goto L_0x02fc;
        };
    L_0x02fc:
        r1 = 0;
        return r1;
    L_0x02fe:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_WEIGHT_SUMMARY;
        return r1;
    L_0x0301:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_WEIGHT;
        return r1;
    L_0x0304:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_VAGINAL_SPOTTING;
        return r1;
    L_0x0307:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTL;
        return r1;
    L_0x030a:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTK;
        return r1;
    L_0x030d:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_STEP_COUNT_DELTA;
        return r1;
    L_0x0310:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_STEP_COUNT_CUMULATIVE;
        return r1;
    L_0x0313:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_STEP_COUNT_CADENCE;
        return r1;
    L_0x0316:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_SPEED_SUMMARY;
        return r1;
    L_0x0319:
        r1 = com.google.android.gms.fitness.data.DataType.zza.zzaTX;
        return r1;
    L_0x031c:
        r1 = com.google.android.gms.fitness.data.DataType.zza.zzaTW;
        return r1;
    L_0x031f:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_SPEED;
        return r1;
    L_0x0322:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTO;
        return r1;
    L_0x0325:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTP;
        return r1;
    L_0x0328:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_POWER_SUMMARY;
        return r1;
    L_0x032b:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_POWER_SAMPLE;
        return r1;
    L_0x032e:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.AGGREGATE_OXYGEN_SATURATION_SUMMARY;
        return r1;
    L_0x0331:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_OXYGEN_SATURATION;
        return r1;
    L_0x0334:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_OVULATION_TEST;
        return r1;
    L_0x0337:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_NUTRITION_SUMMARY;
        return r1;
    L_0x033a:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_HYDRATION;
        return r1;
    L_0x033d:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_NUTRITION;
        return r1;
    L_0x0340:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_MENSTRUATION;
        return r1;
    L_0x0343:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_LOCATION_TRACK;
        return r1;
    L_0x0346:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_LOCATION_SAMPLE;
        return r1;
    L_0x0349:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_LOCATION_BOUNDING_BOX;
        return r1;
    L_0x034c:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_HEIGHT_SUMMARY;
        return r1;
    L_0x034f:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_HEIGHT;
        return r1;
    L_0x0352:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_HEART_RATE_SUMMARY;
        return r1;
    L_0x0355:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_HEART_RATE_BPM;
        return r1;
    L_0x0358:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTS;
        return r1;
    L_0x035b:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTM;
        return r1;
    L_0x035e:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_DISTANCE_DELTA;
        return r1;
    L_0x0361:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_DISTANCE_CUMULATIVE;
        return r1;
    L_0x0364:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_CYCLING_WHEEL_RPM;
        return r1;
    L_0x0367:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_CYCLING_WHEEL_REVOLUTION;
        return r1;
    L_0x036a:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_CYCLING_PEDALING_CUMULATIVE;
        return r1;
    L_0x036d:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_CYCLING_PEDALING_CADENCE;
        return r1;
    L_0x0370:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_CERVICAL_POSITION;
        return r1;
    L_0x0373:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_CERVICAL_MUCUS;
        return r1;
    L_0x0376:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_CALORIES_EXPENDED;
        return r1;
    L_0x0379:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_CALORIES_CONSUMED;
        return r1;
    L_0x037c:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY;
        return r1;
    L_0x037f:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_BASAL_METABOLIC_RATE;
        return r1;
    L_0x0382:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTU;
        return r1;
    L_0x0385:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTQ;
        return r1;
    L_0x0388:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.AGGREGATE_BODY_TEMPERATURE_SUMMARY;
        return r1;
    L_0x038b:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_BODY_TEMPERATURE;
        return r1;
    L_0x038e:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTT;
        return r1;
    L_0x0391:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTR;
        return r1;
    L_0x0394:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY;
        return r1;
    L_0x0397:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.AGGREGATE_BLOOD_PRESSURE_SUMMARY;
        return r1;
    L_0x039a:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_BLOOD_PRESSURE;
        return r1;
    L_0x039d:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.AGGREGATE_BLOOD_GLUCOSE_SUMMARY;
        return r1;
    L_0x03a0:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_BLOOD_GLUCOSE;
        return r1;
    L_0x03a3:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_BODY_FAT_PERCENTAGE;
        return r1;
    L_0x03a6:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY;
        return r1;
    L_0x03a9:
        r1 = com.google.android.gms.fitness.data.HealthDataTypes.TYPE_BASAL_BODY_TEMPERATURE;
        return r1;
    L_0x03ac:
        r1 = com.google.android.gms.fitness.data.DataType.AGGREGATE_ACTIVITY_SUMMARY;
        return r1;
    L_0x03af:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_ACTIVITY_SEGMENT;
        return r1;
    L_0x03b2:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_ACTIVITY_SAMPLES;
        return r1;
    L_0x03b5:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_ACTIVITY_SAMPLE;
        return r1;
    L_0x03b8:
        r1 = com.google.android.gms.fitness.data.DataType.TYPE_WORKOUT_EXERCISE;
        return r1;
    L_0x03bb:
        r1 = com.google.android.gms.fitness.data.DataType.zzaTN;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.data.zzm.zzcZ(java.lang.String):com.google.android.gms.fitness.data.DataType");
    }
}
