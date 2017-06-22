<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
					<div class="form-bottom">
						<ul>
							<li>Déclarez vos drm</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<footer id="footer">
			<nav>
				<ul>
					<li>BIVC - Bureau Interprofessionnel des Vins du Centre</li>
					<li>9, route de Chavignol - F-18300 Sancerre</li>
				</ul>
			</nav>
		</footer>
  </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>
<spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
<script type="text/javascript" src="<c:url value="${casJavascriptFile}" />"></script>
</body>
</html>
