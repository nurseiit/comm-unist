package com.androidnetworking.utils;

import com.androidnetworking.gsonparserfactory.GsonParserFactory;
import com.androidnetworking.interfaces.Parser.Factory;
import com.google.gson.Gson;

public class ParseUtil {
    private static Factory mParserFactory;

    public static void setParserFactory(Factory factory) {
        mParserFactory = factory;
    }

    public static Factory getParserFactory() {
        if (mParserFactory == null) {
            mParserFactory = new GsonParserFactory(new Gson());
        }
        return mParserFactory;
    }

    public static void shutDown() {
        mParserFactory = null;
    }
}
