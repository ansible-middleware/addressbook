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

                <table class="pf-c-table pf-m-grid-md" role="grid" aria-label="Members Table" id="table-basic">
                    <h2>Members</h2>
                    <thead>
                        <tr role="row">
                            <th role="columnheader" scope="col">Name</th>
                            <th role="columnheader" scope="col">Email</th>
                            <th role="columnheader" scope="col">Phone Number</th>
                        </tr>
                    </thead>

                    <tbody role="rowgroup">
                        <c:forEach items="${members}" var="member">
                            <tr role="row">
                                <td role="cell" data-label="Name">
                                    <c:out value="${member.name}" />
                                </td>
                                <td role="cell" data-label="Email">
                                    <c:out value="${member.email}" />
                                </td>
                                <td role="cell" data-label="Phone Number">
                                    <c:out value="${member.phoneNumber}" />
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </body>

            </html>