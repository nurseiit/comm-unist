package com.google.android.gms.fitness.data;

public final class HealthDataTypes {
    public static final DataType AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY = new DataType("com.google.body.temperature.basal.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN, HealthFields.FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION);
    public static final DataType AGGREGATE_BLOOD_GLUCOSE_SUMMARY = new DataType("com.google.blood_glucose.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN, HealthFields.FIELD_TEMPORAL_RELATION_TO_MEAL, Field.FIELD_MEAL_TYPE, HealthFields.FIELD_TEMPORAL_RELATION_TO_SLEEP, HealthFields.FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE);
    public static final DataType AGGREGATE_BLOOD_PRESSURE_SUMMARY = new DataType("com.google.blood_pressure.summary", HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC_AVERAGE, HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC_MAX, HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC_MIN, HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC_AVERAGE, HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC_MAX, HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC_MIN, HealthFields.FIELD_BODY_POSITION, HealthFields.FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION);
    public static final DataType AGGREGATE_BODY_TEMPERATURE_SUMMARY = new DataType("com.google.body.temperature.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN, HealthFields.FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION);
    public static final DataType AGGREGATE_OXYGEN_SATURATION_SUMMARY = new DataType("com.google.oxygen_saturation.summary", HealthFields.FIELD_OXYGEN_SATURATION_AVERAGE, HealthFields.FIELD_OXYGEN_SATURATION_MAX, HealthFields.FIELD_OXYGEN_SATURATION_MIN, HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_AVERAGE, HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MAX, HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MIN, HealthFields.FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE, HealthFields.FIELD_OXYGEN_SATURATION_SYSTEM, HealthFields.FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD);
    public static final DataType TYPE_BASAL_BODY_TEMPERATURE = new DataType("com.google.body.temperature.basal", HealthFields.FIELD_BODY_TEMPERATURE, HealthFields.FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION);
    public static final DataType TYPE_BLOOD_GLUCOSE = new DataType("com.google.blood_glucose", HealthFields.FIELD_BLOOD_GLUCOSE_LEVEL, HealthFields.FIELD_TEMPORAL_RELATION_TO_MEAL, Field.FIELD_MEAL_TYPE, HealthFields.FIELD_TEMPORAL_RELATION_TO_SLEEP, HealthFields.FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE);
    public static final DataType TYPE_BLOOD_PRESSURE = new DataType("com.google.blood_pressure", HealthFields.FIELD_BLOOD_PRESSURE_SYSTOLIC, HealthFields.FIELD_BLOOD_PRESSURE_DIASTOLIC, HealthFields.FIELD_BODY_POSITION, HealthFields.FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION);
    public static final DataType TYPE_BODY_TEMPERATURE = new DataType("com.google.body.temperature", HealthFields.FIELD_BODY_TEMPERATURE, HealthFields.FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION);
    public static final DataType TYPE_CERVICAL_MUCUS = new DataType("com.google.cervical_mucus", HealthFields.FIELD_CERVICAL_MUCUS_TEXTURE, HealthFields.FIELD_CERVICAL_MUCUS_AMOUNT);
    public static final DataType TYPE_CERVICAL_POSITION = new DataType("com.google.cervical_position", HealthFields.FIELD_CERVICAL_POSITION, HealthFields.FIELD_CERVICAL_DILATION, HealthFields.FIELD_CERVICAL_FIRMNESS);
    public static final DataType TYPE_MENSTRUATION = new DataType("com.google.menstruation", HealthFields.FIELD_MENSTRUAL_FLOW);
    public static final DataType TYPE_OVULATION_TEST = new DataType("com.google.ovulation_test", HealthFields.FIELD_OVULATION_TEST_RESULT);
    public static final DataType TYPE_OXYGEN_SATURATION = new DataType("com.google.oxygen_saturation", HealthFields.FIELD_OXYGEN_SATURATION, HealthFields.FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE, HealthFields.FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE, HealthFields.FIELD_OXYGEN_SATURATION_SYSTEM, HealthFields.FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD);
    public static final DataType TYPE_VAGINAL_SPOTTING = new DataType("com.google.vaginal_spotting", Field.FIELD_OCCURRENCES);

    private HealthDataTypes() {
    }
}
