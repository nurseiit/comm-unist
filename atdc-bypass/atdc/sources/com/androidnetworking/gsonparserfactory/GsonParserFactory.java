package com.androidnetworking.gsonparserfactory;

import com.androidnetworking.interfaces.Parser;
import com.androidnetworking.interfaces.Parser.Factory;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.HashMap;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

public final class GsonParserFactory extends Factory {
    private final Gson gson;

    public GsonParserFactory() {
        this.gson = new Gson();
    }

    public GsonParserFactory(Gson gson) {
        this.gson = gson;
    }

    public Parser<ResponseBody, ?> responseBodyParser(Type type) {
        return new GsonResponseBodyParser(this.gson, this.gson.getAdapter(TypeToken.get(type)));
    }

    public Parser<?, RequestBody> requestBodyParser(Type type) {
        return new GsonRequestBodyParser(this.gson, this.gson.getAdapter(TypeToken.get(type)));
    }

    public Object getObject(String str, Type type) {
        try {
            return this.gson.fromJson(str, type);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getString(Object obj) {
        try {
            return this.gson.toJson(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public HashMap<String, String> getStringMap(Object obj) {
        try {
            return (HashMap) this.gson.fromJson(this.gson.toJson(obj), new TypeToken<HashMap<String, String>>() {
            }.getType());
        } catch (Exception e) {
            e.printStackTrace();
            return new HashMap();
        }
    }
}
