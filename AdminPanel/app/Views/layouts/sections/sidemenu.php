<div class="sidebar-panel">
    <div class="d-flex flex-column flex-shrink-0 p-3 h-100">
        <div class="d-flex flex-row justify-content-center align-items-center border-bottom pb-2 mb-3">
            <img src="<?= assets("images/logo.png") ?>" width="75" class="mb-2" />
            <h3 class="logo-text mt-3 ms-2" >Rocket SSH</h3>
        </div>
        <ul class="nav nav-pills flex-column mb-auto menu">
            <li class="nav-item">
                <a href="<?= baseUrl("dashboard") ?>" class="nav-link <?= $activeMenu == "dashboard" ? "active" : "link-body-emphasis" ?>">
                    <?= inlineIcon("dashboard", "menu-icon") ?>
                    داشبورد
                </a>
            </li>
            <li>
                <a href="<?= baseUrl("users") ?>" class="nav-link <?= $activeMenu == "users" ? "active" : "link-body-emphasis" ?>">
                    <?= inlineIcon("users", "menu-icon") ?>
                    مدیریت کاربران
                </a>
            </li>
            <li>
                <a href="<?= baseUrl("users/online") ?>" class="nav-link <?= $activeMenu == "online-users" ? "active" : "link-body-emphasis" ?> ">
                    <?= inlineIcon("earth-americas", "menu-icon") ?>
                    کاربران آنلاین
                </a>
            </li>
            <li>
                <a href="<?= baseUrl("pages/filtering") ?>" class="nav-link <?= $activeMenu == "filtering" ? "active" : "link-body-emphasis" ?> ">
                    <?= inlineIcon("shield-halved", "menu-icon") ?>
                    وضعیت فیلترینگ
                </a>
            </li>
            <?php if ($userRole == "admin") { ?>
                <li>
                    <a href="<?= baseUrl("admins") ?>" class="nav-link <?= $activeMenu == "admins" ? "active" : "link-body-emphasis" ?>">
                        <?= inlineIcon("users-gear", "menu-icon") ?>
                        کاربران ادمین
                    </a>
                </li>
                <li>
                    <a href="<?= baseUrl("settings") ?>" class="nav-link <?= $activeMenu == "settings" ? "active" : "link-body-emphasis" ?>">
                        <?= inlineIcon("gear", "menu-icon") ?>
                        تنظیمات
                    </a>
                </li>
            <?php } ?>
            <li>
                <a href="<?= baseUrl("logout") ?>" class="nav-link link-body-emphasis ">
                    <?= inlineIcon("power-off", "menu-icon") ?>
                    خروج
                </a>
            </li>
        </ul>
    </div>

    <div class="switch-overlay"></div>
</div>