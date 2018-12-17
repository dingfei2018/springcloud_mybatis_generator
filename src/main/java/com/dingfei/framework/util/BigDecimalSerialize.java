package com.dingfei.framework.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.DecimalFormat;

public class BigDecimalSerialize extends JsonSerializer<BigDecimal> {

    private DecimalFormat df = new DecimalFormat("0.00");
    @Override
    public void serialize(BigDecimal value, JsonGenerator gen, SerializerProvider serializerProvider) throws IOException {
        if(value != null) {
            gen.writeString(df.format(value));
        }

    }
}
