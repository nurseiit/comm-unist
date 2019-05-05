package com.androidnetworking.gsonparserfactory;

import com.androidnetworking.interfaces.Parser;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import okhttp3.ResponseBody;

final class GsonResponseBodyParser<T> implements Parser<ResponseBody, T> {
    private final TypeAdapter<T> adapter;
    private final Gson gson;

    GsonResponseBodyParser(Gson gson, TypeAdapter<T> typeAdapter) {
        this.gson = gson;
        this.adapter = typeAdapter;
    }

    public T convert(ResponseBody responseBody) throws IOException {
        try {
            T read = this.adapter.read(this.gson.newJsonReader(responseBody.charStream()));
            return read;
        } finally {
            responseBody.close();
        }
    }
}
