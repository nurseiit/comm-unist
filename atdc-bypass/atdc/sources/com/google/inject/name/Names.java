package com.google.inject.name;

import com.google.inject.Binder;
import com.google.inject.Key;
import java.util.Enumeration;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

public class Names {
    private Names() {
    }

    public static Named named(String str) {
        return new NamedImpl(str);
    }

    public static void bindProperties(Binder binder, Map<String, String> map) {
        binder = binder.skipSources(Names.class);
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            binder.bind(Key.get(String.class, new NamedImpl(str))).toInstance((String) entry.getValue());
        }
    }

    public static void bindProperties(Binder binder, Properties properties) {
        binder = binder.skipSources(Names.class);
        Enumeration propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            binder.bind(Key.get(String.class, new NamedImpl(str))).toInstance(properties.getProperty(str));
        }
    }
}
