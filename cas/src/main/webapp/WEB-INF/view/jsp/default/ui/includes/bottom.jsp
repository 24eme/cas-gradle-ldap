<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</div>
</section>
<!-- end #content -->
        <!-- #footer -->
        <footer id="footer" class="container" role="contentinfo">
            <nav role="navigation">
                <ul>
                    <li><a href="https://declaration.syndicat-cotesdurhone.com/contact">Contact</a></li>
                    <li><a href="https://declaration.syndicat-cotesdurhone.com/mentions-legales">Mentions légales</a></li>
                </ul>
            </nav>
        </footer>
        <!-- end #footer -->

    </div>
    <!-- end #page -->
<spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
<script type="text/javascript" src="<c:url value="${casJavascriptFile}" />"></script>
</body>
</html>
