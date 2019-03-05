<!-- 송운선 2019-01-21 17:43 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../Template/setting.jsp"%>
<head>
</head>
<html>
<body>
	<body class="eq-ui-layout-header-fixed eq-ui-side-nav-auto">
	<!-- Primary Layout -->
	<header class="eq-ui-layout-header-primary-off" style="display: none;">
		<div class="eq-ui-tool-bar-system eq-ui-tool-bar-system-inverted">
			<div class="container-fluid">

				<!-- Title -->
				<!--div class="header-title">
                <span class="section-title">System Bar</span>
            </div-->

				<!-- Left Nav Menu -->
				<ul class="left eq-ui-nav-menu">
					<li class="eq-ui-nav-menu-item-icon"><a
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves eq-ui-top-search-show">
							<i class="mdi mdi-magnify icon"></i>
					</a></li>
				</ul>

				<!-- Right Nav Menu -->
				<ul class="right eq-ui-nav-menu">
					<li class="eq-ui-nav-menu-item-icon"><a href="./"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves">
							<i class="mdi mdi-home icon"></i>
					</a></li>
					<li class="eq-ui-nav-menu-item-icon"><a target="_blank"
						href="https://github.com/ExentriqLtd/Bootstrap-Material-UI/blob/master/README.md"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves">
							<i class="mdi mdi-settings icon"></i>
					</a></li>
					<li class="eq-ui-nav-menu-item-icon"><a
						href="https://github.com/ExentriqLtd/Bootstrap-Material-UI/archive/master.zip"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves download-in-git-hub-href">
							<i class="mdi mdi-download icon"></i>
					</a></li>
					<li class="eq-ui-nav-menu-item-icon"><a href="./showcase.html"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves">
							<i class="mdi mdi-heart icon"></i>
					</a></li>
					<li>
						<!-- Dropdown Structure --> <a style="text-decoration: none;"
						data-target="doc-dropdown-user" data-hover="true"
						data-below-origin="true" href="#!" class="dropdown-trigger">user</a>
						<!-- Dropdown Structure -->
						<ul id="doc-dropdown-user"
							class="eq-ui-dropdown eq-ui-dropdown-right-top">
							<li><a href="#!">Profile</a></li>
							<li><a href="#!">Logout</a></li>
						</ul>
					</li>
				</ul>

				<!-- Top Search -->
				<div class="eq-ui-top-search" style="display: none;">
					<i class="eq-ui-top-search-close mdi mdi-arrow-left icon icon-left"></i>
					<!-- Search -->
					<div class="eq-ui-search">
						<input type="text" placeholder="Search"> <i
							class="eq-ui-search-icon-left mdi mdi-magnify icon icon-left"></i>
						<i
							class="eq-ui-search-clear mdi mdi-close icon icon-right icon-18"></i>
					</div>
				</div>

			</div>
		</div>

		<div class="eq-ui-tool-bar-primary" style="display: none;">
			<div class="container-fluid">

				<!-- Title -->
				<div class="header-title">
					<span class="section-title">Tool Bar</span>
				</div>

			</div>
		</div>

	</header>

	<!-- Secondary Layout -->
	<header class="eq-ui-layout-header">

		<div id="main-eq-ui-app-bar" class="eq-ui-app-bar">
			<div class="container-fluid">

				<!-- Toggle -->
				<div class="eq-ui-side-nav-toggle">
					<i class="mdi mdi-menu icon icon-left icon-24"></i>
				</div>

				<!-- Title -->
				<!--div class="header-title">
                <span class="section-title">Exentriq</span>
                <i class="mdi mdi-chevron-right icon icon-left icon-24"></i>
                <span class="chapter-title">App Bar</span>
            </div-->

				<!-- Breadcrumb -->
				<div class="eq-ui-breadcrumb" data-only-one="true">
					<a href="./" class="eq-ui-breadcrumb-item"><span>Home</span></a> <a
						href="./" class="eq-ui-breadcrumb-item"><span>Exentriq</span></a>
					<a href="./" class="eq-ui-breadcrumb-item"><span>App Bar</span></a>
				</div>

				<!-- Nav Menu -->
				<ul class="right eq-ui-nav-menu">
					<li class="eq-ui-nav-menu-item-icon eq-ui-hidden-xs"><a
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves eq-ui-top-search-show">
							<i class="mdi mdi-magnify icon"></i>
					</a></li>
					<li class="eq-ui-nav-menu-item-icon eq-ui-hidden-xs"><a
						data-target="eq-ui-modal-header-doc-1"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves eq-ui-modal-trigger">
							<i class="mdi mdi-apps icon"></i>
					</a></li>
					<li class="eq-ui-nav-menu-item-icon"><a
						data-target="eq-ui-modal-header-doc-1"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves eq-ui-modal-trigger">
							<i class="mdi mdi-bell icon"></i>
					</a> <span class="eq-ui-badge eq-ui-badge-overlap" data-badge="12"></span>
					</li>
					<li class="eq-ui-nav-menu-item-icon"><a
						data-target="eq-ui-modal-header-doc-1"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves eq-ui-modal-trigger">
							<i class="mdi mdi-comment icon"></i>
					</a></li>
					<li class="eq-ui-nav-menu-item-icon"><a
						data-target="doc-dropdown-app-bar-user" data-gutter="-48"
						data-hover="false"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves dropdown-trigger">
							<i class="mdi mdi-account icon"></i>
					</a> <!-- Dropdown Structure -->
						<ul id="doc-dropdown-app-bar-user"
							class="eq-ui-dropdown eq-ui-dropdown-right-top">
							<li><a href="#!">Profile</a></li>
							<li><a href="#!">Logout</a></li>
						</ul></li>
					<li class="eq-ui-nav-menu-item-icon hide eq-ui-visible-xs-block">
						<a data-target="doc-dropdown-app-bar" data-gutter="-48"
						data-hover="false"
						class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves dropdown-trigger">
							<i class="mdi mdi-dots-vertical icon"></i>
					</a> <!-- Dropdown Structure -->
						<ul id="doc-dropdown-app-bar"
							class="eq-ui-dropdown eq-ui-dropdown-right-top">
							<li><a class="eq-ui-top-search-show"><i
									class="mdi mdi-magnify icon"></i> Search</a></li>
							<li><a href="./"><i class="mdi mdi-apps icon"></i> Apps</a></li>
						</ul>
					</li>
				</ul>

				<!-- Top Search -->
				<div class="eq-ui-top-search">
					<i
						class="eq-ui-top-search-close mdi mdi-arrow-left eq-ui-icon eq-ui-icon-left"></i>
					<!-- Search -->
					<div id="doc-eq-ui-top-search-autocomplete" class="eq-ui-search">
						<input type="text" placeholder="Search"> <i
							class="eq-ui-search-icon-left mdi mdi-magnify eq-ui-icon eq-ui-icon-left"></i>
						<i
							class="eq-ui-search-clear mdi mdi-close eq-ui-icon eq-ui-icon-right"></i>
					</div>
				</div>

			</div>
		</div>

		<div class="eq-ui-tool-bar doc-show-in-layout-struture-1">
			<div class="container-fluid">
				<div class="header-title">
					<span class="section-title">Tool Bar</span>
				</div>
			</div>
		</div>

		<!-- Floating Btn -->
		<div class="eq-ui-btn-fab-floating doc-show-in-layout-struture-1">
			<a class="btn btn-primary eq-ui-btn-fab eq-ui-waves-light"><i
				class="mdi mdi-plus icon"></i></a>
		</div>

	</header>

	<!-- Side nav -->
	<div class="eq-ui-side-nav">

		<div class="eq-ui-side-nav-wrapper">

			<div class="brand">
				<div class="eq-ui-side-nav-toggle">
					<i class="mdi mdi-menu icon icon-left icon-24"></i>
				</div>
				<img src="assets/img/doc/exentriq_logo.svg" alt="Exentriq logo">
			</div>

			<div class="eq-ui-side-nav-content-wrapper">
				<nav>

					<!-- Search -->
					<div id="doc-eq-ui-side-nav-search-autocomplete"
						class="eq-ui-search">
						<input type="text" placeholder="Search"> <i
							class="eq-ui-search-icon-left mdi mdi-magnify icon icon-left"></i>
						<i
							class="eq-ui-search-clear mdi mdi-close icon icon-right icon-18"></i>
					</div>

					<!-- Collapsible Menu -->
					<ul class="eq-ui-collapsible" data-collapsible="accordion">

						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves">
								<a id="collapsible-nav-index" href="./"> <i
									class="mdi mdi-home icon icon-left icon-24"></i> Home
								</a>
							</div>
						</li>

						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves">
								<a id="collapsible-nav-getting-started" target="_blank"
									href="https://github.com/ExentriqLtd/Bootstrap-Material-UI/blob/master/README.md">
									<i class="mdi mdi-settings icon icon-left icon-24"></i> <i
									class="mdi mdi-open-in-new icon icon-right icon-18"></i>
									Getting Started
								</a>
							</div>
						</li>

						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves">
								<a id="collapsible-nav-css"> <i
									class="mdi mdi-book-variant icon icon-left icon-24"></i> CSS
								</a>
							</div>
							<div class="eq-ui-collapsible-body">
								<a id="collapsible-nav-css-badges" href="./badges.html">Badges</a>
								<a id="collapsible-nav-css-color" href="./color.html">Color</a>
								<a id="collapsible-nav-css-helpers" href="./helpers.html">Helpers</a>
								<a id="collapsible-nav-css-table" href="./table.html">Table</a>
								<a id="collapsible-nav-css-sticky-table"
									href="./sticky-table.html">Sticky Table</a> <a
									id="collapsible-nav-css-typography" href="./typography.html">Typography</a>
							</div>
						</li>

						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves">
								<a id="collapsible-nav-components"> <i
									class="mdi mdi-puzzle icon icon-left icon-24"></i> Components
								</a>
							</div>
							<div class="eq-ui-collapsible-body">
								<a id="collapsible-nav-components-buttons" href="./buttons.html">Buttons</a>
								<a id="collapsible-nav-components-cards" href="./cards.html">Cards</a>
								<a id="collapsible-nav-components-list" href="./list.html">List</a>
								<a id="collapsible-nav-components-forms" href="./forms.html">Forms</a>
								<a id="collapsible-nav-components-form-validation"
									href="./form-validation.html">Form Validation</a> <a
									id="collapsible-nav-components-loader" href="./loader.html">Loader</a>
							</div>
						</li>

						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves">
								<a id="collapsible-nav-java-script"> <i
									class="mdi mdi-layers icon icon-left icon-24"></i> JavaScript
								</a>
							</div>
							<div class="eq-ui-collapsible-body">
								<a id="collapsible-nav-java-script-collapsible"
									href="./collapsible.html">Collapsible</a> <a
									id="collapsible-nav-java-script-dropdown"
									href="./dropdown.html">Dropdown</a> <a
									id="collapsible-nav-java-script-modals" href="./modals.html">Modals</a>
								<a id="collapsible-nav-java-script-tabs" href="./tabs.html">Tabs</a>
							</div>
						</li>

						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves">
								<a id="collapsible-nav-download"
									class="download-in-git-hub-href"
									href="https://github.com/ExentriqLtd/Bootstrap-Material-UI/archive/master.zip">
									<i class="mdi mdi-download icon icon-left icon-24"></i>
									Download
								</a>
							</div>
						</li>

						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves">
								<a id="collapsible-nav-showcase" href="./showcase.html"> <i
									class="mdi mdi-heart icon icon-left icon-24"></i> Showcase
								</a>
							</div>
						</li>

					</ul>

					<!-- Collapsible Group Menu -->
					<ul style="display: none;"
						class="eq-ui-collapsible eq-ui-collapsible-group"
						data-collapsible="expandable">

						<!-- Group 1 -->
						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves active">
								<a id="collapsible-nav-group-1"> <i
									class="mdi mdi-image-filter-none icon icon-left icon-24"></i> <i
									class="mdi mdi-plus icon icon-right icon-24 eq-ui-collapsible-view-close"></i>
									<i
									class="mdi mdi-minus icon icon-right icon-24 eq-ui-collapsible-view-open"></i>
									Group 1
								</a>
							</div>
							<div class="eq-ui-collapsible-body">

								<!-- 1º level menu -->
								<ul class="eq-ui-collapsible" data-collapsible="accordion">

									<!-- 1º level menu 1 -->
									<li>
										<div class="eq-ui-collapsible-header eq-ui-waves">
											<a id="collapsible-nav-group-1-menu-1"> <i
												class="mdi mdi-folder icon icon-left icon-24"></i> First
												level
											</a>
										</div>
										<div class="eq-ui-collapsible-body">

											<!-- 2º level menu 1 -->
											<ul class="eq-ui-collapsible" data-collapsible="accordion">

												<!-- 2º level menu 1 sub 1 -->
												<li>
													<div class="eq-ui-collapsible-header eq-ui-waves">
														<a id="collapsible-nav-group-1-menu-1-sub1"> <i
															class="mdi mdi-folder icon icon-left icon-24"></i> Second
															level
														</a>
													</div>
													<div class="eq-ui-collapsible-body">

														<!-- 3º level menu 1 sub 1 -->
														<a id="collapsible-nav-group-1-menu-1-sub1-sample1"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-1-menu-1-sub1-sample2"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-1-menu-1-sub1-sample3"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-1-menu-1-sub1-sample4"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a>

													</div>
												</li>
												<!-- 2º level menu 1 sub 1 -->

											</ul>
											<!-- 2º level menu 1 -->

										</div>
									</li>
									<!-- 1º level menu 1 -->

									<!-- 1º level menu 2 -->
									<li>
										<div class="eq-ui-collapsible-header eq-ui-waves">
											<a id="collapsible-nav-group-1-menu-2"> <i
												class="mdi mdi-folder icon icon-left icon-24"></i> First
												level
											</a>
										</div>
										<div class="eq-ui-collapsible-body">

											<!-- 2º level menu 2 -->
											<ul class="eq-ui-collapsible" data-collapsible="accordion">

												<!-- 2º level menu 2 sub 1 -->
												<li>
													<div class="eq-ui-collapsible-header eq-ui-waves">
														<a id="collapsible-nav-group-1-menu-2-sub1"> <i
															class="mdi mdi-folder icon icon-left icon-24"></i> Second
															level
														</a>
													</div>
													<div class="eq-ui-collapsible-body">

														<!-- 3º level menu 2 sub 1 -->
														<a id="collapsible-nav-group-1-menu-2-sub1-sample1"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-1-menu-2-sub1-sample2"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-1-menu-2-sub1-sample3"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-1-menu-2-sub1-sample4"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a>

													</div>
												</li>
												<!-- 2º level menu 2 sub 1 -->

											</ul>
											<!-- 2º level menu 2 -->

										</div>
									</li>
									<!-- 1º level menu 2 -->

									<!-- 1º level menu 3 -->
									<li>
										<div class="eq-ui-collapsible-header eq-ui-waves">
											<a id="collapsible-nav-group-1-menu-3"> <i
												class="mdi mdi-file icon icon-left icon-24"></i> First level
											</a>
										</div>
									</li>
									<!-- 1º level menu 3 -->

								</ul>
								<!-- 1º level menu -->

							</div>
						</li>
						<!-- Group 1 -->

						<!-- Group 2 -->
						<li>
							<div class="eq-ui-collapsible-header eq-ui-waves active">
								<a id="collapsible-nav-group-2"> <i
									class="mdi mdi-image-filter-none icon icon-left icon-24"></i> <i
									class="mdi mdi-plus icon icon-right icon-24 eq-ui-collapsible-view-close"></i>
									<i
									class="mdi mdi-minus icon icon-right icon-24 eq-ui-collapsible-view-open"></i>
									Group 2
								</a>
							</div>
							<div class="eq-ui-collapsible-body">

								<!-- 1º level menu -->
								<ul class="eq-ui-collapsible" data-collapsible="accordion">

									<!-- 1º level menu 1 -->
									<li>
										<div class="eq-ui-collapsible-header eq-ui-waves">
											<a id="collapsible-nav-group-2-menu-1"> <i
												class="mdi mdi-folder icon icon-left icon-24"></i> First
												level
											</a>
										</div>
										<div class="eq-ui-collapsible-body">

											<!-- 2º level menu 1 -->
											<ul class="eq-ui-collapsible" data-collapsible="accordion">

												<!-- 2º level menu 1 sub 1 -->
												<li>
													<div class="eq-ui-collapsible-header eq-ui-waves">
														<a id="collapsible-nav-group-2-menu-1-sub1"> <i
															class="mdi mdi-folder icon icon-left icon-24"></i> Second
															level
														</a>
													</div>
													<div class="eq-ui-collapsible-body">

														<!-- 3º level menu 1 sub 1 -->
														<a id="collapsible-nav-group-2-menu-1-sub1-sample1"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-2-menu-1-sub1-sample2"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-2-menu-1-sub1-sample3"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-2-menu-1-sub1-sample4"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a>

													</div>
												</li>
												<!-- 2º level menu 1 sub 1 -->

											</ul>
											<!-- 2º level menu 1 -->

										</div>
									</li>
									<!-- 1º level menu 1 -->

									<!-- 1º level menu 2 -->
									<li>
										<div class="eq-ui-collapsible-header eq-ui-waves">
											<a id="collapsible-nav-group-2-menu-2"> <i
												class="mdi mdi-folder icon icon-left icon-24"></i> First
												level
											</a>
										</div>
										<div class="eq-ui-collapsible-body">

											<!-- 2º level menu 2 -->
											<ul class="eq-ui-collapsible" data-collapsible="accordion">

												<!-- 2º level menu 2 sub 1 -->
												<li>
													<div class="eq-ui-collapsible-header eq-ui-waves">
														<a id="collapsible-nav-group-2-menu-2-sub1"> <i
															class="mdi mdi-folder icon icon-left icon-24"></i> Second
															level
														</a>
													</div>
													<div class="eq-ui-collapsible-body">

														<!-- 3º level menu 2 sub 1 -->
														<a id="collapsible-nav-group-2-menu-2-sub1-sample1"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-2-menu-2-sub1-sample2"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-2-menu-2-sub1-sample3"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a> <a id="collapsible-nav-group-2-menu-2-sub1-sample4"
															href="./"> <i
															class="mdi mdi-file icon icon-left icon-24"></i>Third
															level
														</a>

													</div>
												</li>
												<!-- 2º level menu 2 sub 1 -->

											</ul>
											<!-- 2º level menu 2 -->

										</div>
									</li>
									<!-- 1º level menu 2 -->

									<!-- 1º level menu 3 -->
									<li>
										<div class="eq-ui-collapsible-header eq-ui-waves">
											<a id="collapsible-nav-group-2-menu-3"> <i
												class="mdi mdi-file icon icon-left icon-24"></i> First level
											</a>
										</div>
									</li>
									<!-- 1º level menu 3 -->

								</ul>
								<!-- 1º level menu -->

							</div>
						</li>
						<!-- Group 2 -->

					</ul>
					<!-- Group Menu -->

				</nav>
			</div>

			<div class="footer">
				<a target="_blank"
					href="https://github.com/ExentriqLtd/Bootstrap-Material-UI"><i
					class="mdi mdi-github-circle icon icon-left icon-18"></i></a>
				<p class="copyright">&copy; Exentriq</p>
				<a target="_blank" href="http://opensource.org/licenses/MIT">Free
					& Open Source (MIT)</a>
			</div>

		</div>

	</div>


	<!-- Modal Right (Notifications) -->
	<div id="eq-ui-modal-header-doc-1"
		class="eq-ui-modal eq-ui-modal-fixed eq-ui-modal-right-sheet">

		<!-- Header -->
		<div class="eq-ui-modal-header">
			<div class="header-title">
				<!--i class="mdi mdi-close icon icon-left icon-24 eq-ui-modal-close"></i-->
				<span class="section-title">Notifications</span>
			</div>
			<ul class="right eq-ui-nav-menu">
				<li class="eq-ui-nav-menu-item-icon"><a
					class="btn btn-default eq-ui-btn-flat eq-ui-btn-fab eq-ui-btn-menu-fab eq-ui-waves eq-ui-modal-close">
						<i class="mdi mdi-close eq-ui-icon"></i>
				</a></li>
			</ul>
		</div>

		<!-- Content -->
		<div class="eq-ui-modal-content">

			<ul class="eq-ui-list eq-ui-hoverable">

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_1.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_2.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_3.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_1.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_2.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_3.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_1.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_2.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_3.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_1.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_2.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>

				<li
					class="eq-ui-list-item eq-ui-list-avatar eq-ui-list-secondary-content">
					<img class="circle" src="assets/img/doc/avatar/avatar_3.jpg">
					<div class="eq-ui-list-body">
						<h6 class="eq-ui-list-title">Title</h6>
						Duis bibendum nisl quis tellus rutrum, ut aliquet massa interdum.
					</div> <a
					class="eq-ui-list-secondary-content-body shades-text-black-hover"><i
						class="mdi mdi-close-circle icon icon-18"></i></a>
				</li>



			</ul>

		</div>

		<!-- Footer -->
		<div class="eq-ui-modal-footer">
			<a href="#"
				class="btn btn-default eq-ui-btn-flat eq-ui-waves eq-ui-modal-close">View
				All</a>
		</div>

	</div>

	<main class="eq-ui-main">
	<div class="jumbotron">
		<div class="container">
			<h1>Collapsible</h1>
			<p>Collapsibles are accordion elements that expand when clicked
				on. They allow you to hide content that is not immediately relevant
				to the user.</p>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="header">Accordion</h2>
				<p>Basic collapsible.</p>

				<ul class="eq-ui-collapsible" data-collapsible="accordion">
					<li>
						<div class="eq-ui-collapsible-header active">
							<a><i
								class="mdi mdi-image-filter-drama icon icon-left icon-24"></i>Collapsible
								#1</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
					<li>
						<div class="eq-ui-collapsible-header">
							<a><i class="mdi mdi-map-marker icon icon-left icon-24"></i>Collapsible
								#2</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
					<li>
						<div class="eq-ui-collapsible-header">
							<a><i class="mdi mdi-fire icon icon-left icon-24"></i>Collapsible
								#3</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
				</ul>

				<pre>
					<code class="language-markup">
&lt;ul class=&quot;eq-ui-collapsible&quot; data-collapsible=&quot;accordion&quot;&gt;
    &lt;li&gt;
        &lt;div class=&quot;eq-ui-collapsible-header active&quot;&gt;
            &lt;a&gt;&lt;i class=&quot;mdi mdi-image-filter-drama icon icon-left icon-24&quot;&gt;&lt;/i&gt;Collapsible #1&lt;/a&gt;
        &lt;/div&gt;
        &lt;div class=&quot;eq-ui-collapsible-body&quot;&gt;
            &lt;div class=&quot;eq-ui-collapsible-body-inner&quot;&gt;
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee.
            &lt;/div&gt;
        &lt;/div&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;div class=&quot;eq-ui-collapsible-header&quot;&gt;
            &lt;a&gt;&lt;i class=&quot;mdi mdi-map-marker icon icon-left icon-24&quot;&gt;&lt;/i&gt;Collapsible #2&lt;/a&gt;
        &lt;/div&gt;
        &lt;div class=&quot;eq-ui-collapsible-body&quot;&gt;
            &lt;div class=&quot;eq-ui-collapsible-body-inner&quot;&gt;
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee.
            &lt;/div&gt;
        &lt;/div&gt;
    &lt;/li&gt;
    &lt;li&gt;
        &lt;div class=&quot;eq-ui-collapsible-header&quot;&gt;
            &lt;a&gt;&lt;i class=&quot;mdi mdi-fire icon icon-left icon-24&quot;&gt;&lt;/i&gt;Collapsible #3&lt;/a&gt;
        &lt;/div&gt;
        &lt;div class=&quot;eq-ui-collapsible-body&quot;&gt;
            &lt;div class=&quot;eq-ui-collapsible-body-inner&quot;&gt;
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee.
            &lt;/div&gt;
        &lt;/div&gt;
    &lt;/li&gt;
&lt;/ul&gt;</code>
				</pre>

			</div>
		</div>

		<div class="row">
			<div class="col-md-12">

				<h2 class="header">Popout</h2>
				<p>
					For create collapsible popout add the class
					<code class="language-markup">popout</code>
					.
				</p>

				<ul class="eq-ui-collapsible popout" data-collapsible="accordion">
					<li>
						<div class="eq-ui-collapsible-header">
							<a><i
								class="mdi mdi-image-filter-drama icon icon-left icon-24"></i>Collapsible
								#1</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
					<li>
						<div class="eq-ui-collapsible-header active">
							<a><i class="mdi mdi-map-marker icon icon-left icon-24"></i>Collapsible
								#2</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
					<li>
						<div class="eq-ui-collapsible-header">
							<a><i class="mdi mdi-fire icon icon-left icon-24"></i>Collapsible
								#3</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
				</ul>

				<pre>
					<code class="language-markup">
&lt;ul class=&quot;eq-ui-collapsible popout&quot; data-collapsible=&quot;accordion&quot;&gt;
...</code>
				</pre>

			</div>
		</div>

		<div class="row">
			<div class="col-md-12">

				<h2 class="header">Expandable</h2>
				<p>
					For create collapsible expandable add in the data-collapsible
					<code class="language-markup">expandable</code>
					.
				</p>

				<ul class="eq-ui-collapsible" data-collapsible="expandable">
					<li>
						<div class="eq-ui-collapsible-header">
							<a><i
								class="mdi mdi-image-filter-drama icon icon-left icon-24"></i>Collapsible
								#1</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
					<li>
						<div class="eq-ui-collapsible-header">
							<a><i class="mdi mdi-map-marker icon icon-left icon-24"></i>Collapsible
								#2</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
					<li>
						<div class="eq-ui-collapsible-header">
							<a><i class="mdi mdi-fire icon icon-left icon-24"></i>Collapsible
								#3</a>
						</div>
						<div class="eq-ui-collapsible-body">
							<div class="eq-ui-collapsible-body-inner">Anim pariatur
								cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat
								skateboard dolor brunch. Food truck quinoa nesciunt laborum
								eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it
								squid single-origin coffee.</div>
						</div>
					</li>
				</ul>

				<pre>
					<code class="language-markup">
&lt;ul class=&quot;eq-ui-collapsible&quot; data-collapsible=&quot;expandable&quot;&gt;
...</code>
				</pre>

			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<h2 id="pin-vue-collapsible" class="header">Dynamic
					Initialization (Vue Example)</h2>
				<p>Rest Mockup Data</p>

				<div id="vue-collapsible">
					<section v-if="errored">
						<p>We're sorry, we're not able to retrieve this data at the
							moment, please try back later</p>
					</section>

					<section v-else>
						<section v-if="loading" style="height: 100px; position: relative;">
							<div class='eq-ui-loader-ring_for_material-mini'
								style="position: absolute; margin: 0; top: 25%; left: 50%;">
								<div class='eq-ui-loader-ring-light-mini'></div>
								<div class='eq-ui-loader-ring-track-mini'></div>
							</div>
						</section>

						<section v-else>

							<ul class="eq-ui-collapsible" data-collapsible="accordion">
								<li v-for="post in posts" v-bind:key="post.id">
									<div class="eq-ui-collapsible-header active">
										<a><i
											class="mdi mdi-image-filter-drama icon icon-left icon-24"></i>Collapsible</a>
									</div>
									<div class="eq-ui-collapsible-body">
										<div class="eq-ui-collapsible-body-inner">
											<ul class="eq-ui-list" style="display: block;">
												<li class="eq-ui-list-item">{{ post.model }}</li>
												<li class="eq-ui-list-item">{{ post.quantity |
													currencydecimal }}</li>
												<li class="eq-ui-list-item">{{ post.price }}</li>
											</ul>
										</div>
									</div>
								</li>
							</ul>

						</section>
					</section>
				</div>

			</div>
		</div>

	</div>

	<!--footer>
    <p>&copy; Exentriq 2015</p>
</footer-->

	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
			</div>
		</div>

	</div>
	<%@ include file="../../Template/footer.jsp"%>
</body>
</html>