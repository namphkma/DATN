//package com.hellokoding.sso.resource.config;
//
//import org.elasticsearch.client.Client;
//import org.elasticsearch.client.transport.TransportClient;
//import org.elasticsearch.common.settings.Settings;
//import org.elasticsearch.common.transport.TransportAddress;
//import org.elasticsearch.transport.client.PreBuiltTransportClient;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;
//
//import java.net.InetAddress;
//import java.net.UnknownHostException;
//
//@Configuration
//@EnableElasticsearchRepositories(basePackages = "com.hellokoding.sso.resource.entity.es")
//public class ElasticsearchConfig {
//    @Value("${elasticsearch.host:localhost}")
//    public String host;
//    @Value("${elasticsearch.port:9200}")
//    public int port;
//}
