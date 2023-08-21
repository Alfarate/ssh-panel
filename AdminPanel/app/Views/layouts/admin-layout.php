<?php include "sections/head.php"; ?>

<?php include "sections/sidemenu.php"; ?>
<div class="main-content-wrap d-flex flex-column h-100">
    <div class="flex-shrink-0 mb-2">
        <div class="container-fluid ">
            <?php include "sections/navbar.php"; ?>
            <div class="main-content pt-4">
                <?php include viewContentPath($viewContent); ?>
            </div>
        </div>
    </div>

    <footer class="footer mt-auto bg-transparent">
        <div class="container-fluid">
            <div class=" border-top  py-2">
                <div class="d-flex <?= $showUpNotice ? "justify-content-between " : "justify-content-end" ?>">
                    <?php if ($showUpNotice) { ?>
                        <div class="text-warning small">
                            ورژن جدیدی از نرم افزار قابل دسترس هست به گیت هاب مراجعه کنید!
                        </div>
                    <?php } ?>
                    <span class="text-body-secondary">
                        <strong>Rocket SSH By <a target="_blank" href="https://github.com/mahmoud-ap/">MahmoudAp </a> version: <?= $appVersion ?></strong>
                    </span>

                </div>
            </div>
        </div>
    </footer>
</div>

<?php include "sections/footer.php"; ?>