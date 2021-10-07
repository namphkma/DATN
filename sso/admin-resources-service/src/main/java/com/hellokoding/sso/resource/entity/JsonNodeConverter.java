package com.hellokoding.sso.resource.entity;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.AttributeConverter;
import java.io.IOException;

public class JsonNodeConverter implements AttributeConverter<JsonNode, String> {
    private static final Logger logger = LoggerFactory.getLogger(JsonNodeConverter.class);

    /**
     * @param jsonNode
     * @return
     */
    @Override
    public String convertToDatabaseColumn(JsonNode jsonNode) {
        if (jsonNode == null) {
            logger.warn("jsonNode input is null, returning null");
            return null;
        }

        ObjectMapper objectMapper = new ObjectMapper();

        String json = "";
        try {
            json = objectMapper.writeValueAsString(jsonNode);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }

    /**
     * @param jsonNodeString
     * @return
     */
    @Override
    public JsonNode convertToEntityAttribute(String jsonNodeString) {

        if (StringUtils.isEmpty(jsonNodeString)) {
            logger.warn("jsonNodeString input is empty, returning null");
            return null;
        }

        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.readTree(jsonNodeString);
        } catch (JsonProcessingException e) {
            logger.error("Error parsing jsonNodeString", e);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
