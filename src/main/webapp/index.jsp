<%-- JBoss, Home of Professional Open Source Copyright 2015, Red Hat, Inc. and/or its affiliates, and individual
    contributors by the @authors tag. See the copyright.txt in the distribution for a full listing of individual
    contributors. Licensed under the Apache License, Version 2.0 (the "License" ); you may not use this file except in
    compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
    specific language governing permissions and limitations under the License. --%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html lang="en" class="pf-m-redhat-font">

            <head>
                <title>addressbook</title>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <!-- Here we include the css file  -->
                <link rel="stylesheet" href="resources/patternfly/patternfly.css" />
                <link rel="stylesheet" href="resources/patternfly/patternfly-addons.css" />

            </head>

            <body>
                <jsp:useBean id="controller" class="com.redhat.middleware.ansible.addressbook.controller.Controller"
                    scope="request" />
                <c:set var="authenticatedUser" value="<%=controller.getAuthenticatedUser(request)%>" />
                <div class="pf-c-page" id="masthead-horizontal-nav">
                    <a class="pf-c-skip-to-content pf-c-button pf-m-primary"
                        href="#main-content-masthead-horizontal-nav">Skip to content</a>
                    <header class="pf-c-masthead" id="masthead-horizontal-nav-masthead">
                        <div class="pf-c-masthead__main">
                            <a class="pf-c-masthead__brand" href="#">
                                <picture class="pf-c-brand pf-m-picture" style="
                        --pf-c-brand--Width: 180px;
                        --pf-c-brand--Width-on-md: 180px;
                        --pf-c-brand--Width-on-2xl: 220px;
                      ">
                                    <img src="resources/img/rh-ansible-logo.png"
                                        alt="Ansible Automation Platform Logo" />
                                </picture>
                            </a>
                        </div>
                        <div class="pf-c-masthead__content">
                            <div class="pf-c-toolbar pf-m-full-height pf-m-static"
                                id="masthead-horizontal-nav-masthead-toolbar">
                                <div class="pf-c-toolbar__content">
                                    <div class="pf-c-toolbar__content-section">
                                        <div
                                            class="pf-c-toolbar__group pf-m-icon-button-group pf-m-align-right pf-m-spacer-none pf-m-spacer-md-on-md">
                                            <div
                                                class="pf-c-toolbar__group pf-m-icon-button-group pf-m-hidden pf-m-visible-on-lg">
                                            </div>
                                        </div>
                                        <div class="pf-c-toolbar__item pf-m-hidden pf-m-visible-on-sm">
                                            <div class="pf-c-dropdown pf-m-full-height"
                                                style="--pf-c-dropdown--MaxWidth: 20ch;">
                                                <span class="pf-c-dropdown__toggle-image">
                                                    <img class="pf-c-avatar" alt="Avatar image"
                                                        src="https://www.patternfly.org/v4/assets/images/img_avatar-light.svg" />
                                                </span>
                                                <span class="pf-c-dropdown__toggle-text">${authenticatedUser}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <main class="pf-c-page__main" tabindex="-1" id="main-content-masthead-horizontal-nav">
                        <section class="pf-c-page__main-section pf-m-limit-width pf-m-light">
                            <div class="pf-c-page__main-body">
                                <div class="pf-c-content">
                                    <h1>Addressbook</h1>
                                </div>
                            </div>
                        </section>
                        <section class="pf-c-page__main-section pf-m-limit-width pf-m-align-center">
                            <div class="pf-c-page__main-body">
                                <div class="pf-m-gutter">
                                    <div class="pf-c-content">
                                        <div class="pf-c-card">
                                            <div class="pf-c-card__body">
                                                <%@ include file="registrationForm.jsp" %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="pf-c-page__main-section pf-m-limit-width pf-m-align-center">
                            <div class="pf-c-page__main-body">
                                <div class="pf-m-gutter">
                                    <div class="pf-c-content">
                                        <div class="pf-c-card">
                                            <div class="pf-c-card__body">
                                                <%@ include file="registrationResult.jsp" %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </main>
                </div>
            </body>

            </html>