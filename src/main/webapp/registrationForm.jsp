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
            <html>

            <head>
            </head>

            <body>
                <h2>Registration</h2>
                <form class="pf-c-form pf-m-horizontal" action="register.do" method="POST">
                    <c:choose>
                        <c:when test="${empty errorMessage}">
                            <div class="pf-c-form__alert" hidden>
                        </c:when>
                        <c:otherwise>
                            <div class="pf-c-form__alert">
                        </c:otherwise>
                    </c:choose>
                    <div class="pf-c-alert pf-m-danger pf-m-inline" aria-label="Inline danger alert">
                        <div class="pf-c-alert__icon">
                            <i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"></i>
                        </div>
                        <p class="pf-c-alert__title">
                            <span class="pf-screen-reader">Error alert:</span>
                            ${errorMessage}
                        </p>
                    </div>
                    </div>
                    <c:choose>
                        <c:when test="${empty infoMessage}">
                            <div class="pf-c-form__alert" hidden>
                        </c:when>
                        <c:otherwise>
                            <div class="pf-c-form__alert">
                        </c:otherwise>
                    </c:choose>
                    <div class="pf-c-alert pf-m-info pf-m-inline" aria-label="Inline info alert">
                        <div class="pf-c-alert__icon">
                            <i class="fas fa-fw fa-info-circle" aria-hidden="true"></i>
                        </div>
                        <p class="pf-c-alert__title">
                            <span class="pf-screen-reader">Info alert:</span>
                            ${infoMessage}
                        </p>
                    </div>
                    </div>
                    <div class="pf-c-form__group">
                        <div class="pf-c-form__group-label">
                            <label class="pf-c-form__label" for="registration-name">
                                <span class="pf-c-form__label-text">Name</span>
                            </label>
                        </div>
                        <div class="pf-c-form__group-control">
                            <input class="pf-c-form-control" id="registration-name" name="name"
                                value="${newMember.name}" />
                        </div>
                    </div>
                    <div class="pf-c-form__group">
                        <div class="pf-c-form__group-label">
                            <label class="pf-c-form__label" for="registration-email">
                                <span class="pf-c-form__label-text">Email</span>
                            </label>
                        </div>
                        <div class="pf-c-form__group-control">
                            <input class="pf-c-form-control" id="registration-email" name="email" type="email"
                                value="${newMember.email}" required />
                        </div>
                    </div>
                    <div class="pf-c-form__group">
                        <div class="pf-c-form__group-label">
                            <label class="pf-c-form__label" for="registration-phone">
                                <span class="pf-c-form__label-text">Phone</span>
                            </label>
                        </div>
                        <div class="pf-c-form__group-control">
                            <input class="pf-c-form-control" id="registration-phone" name="phoneNumber"
                                value="${newMember.phoneNumber}" required type="tel" pattern="[0-9]{10,12}"
                                aria-describedby="registration-phone-helper" />
                            <p class="pf-c-form__helper-text" id="registration-phone-helper" aria-live="polite">
                                Digits between 10-12 characters in length</p>
                        </div>
                    </div>
                    <div class="pf-c-form__group pf-m-action">
                        <div class="pf-c-form__group-control">
                            <div class="pf-c-form__actions">
                                <button class="pf-c-button pf-m-primary" type="submit">Submit</button>
                                <button class="pf-c-button pf-m-link" type="reset">Reset</button>
                            </div>
                        </div>
                    </div>
                </form>

            </body>

            </html>