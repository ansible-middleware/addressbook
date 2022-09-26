package com.redhat.middleware.ansible.addressbook.controller;

import javax.servlet.http.HttpServletRequest;
import org.keycloak.KeycloakSecurityContext;
import org.keycloak.representations.AccessToken;

public class Controller {

    public String getAuthenticatedUser(HttpServletRequest req) {

        KeycloakSecurityContext ksc = getSession(req);
        AccessToken accessToken = ksc.getToken();

        if (accessToken.getGivenName() != null && accessToken.getFamilyName() != null) {
            return accessToken.getGivenName() + " " + accessToken.getFamilyName();
        } else {
            return accessToken.getPreferredUsername();
        }

    }

    private KeycloakSecurityContext getSession(HttpServletRequest req) {
        return (KeycloakSecurityContext) req.getAttribute(KeycloakSecurityContext.class.getName());
    }

}
