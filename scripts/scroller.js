(function (global, undefined) {
    function StartAutoRotation(rotator, args) {
        if (!rotator.autoIntervalID) {
            rotator.autoIntervalID = window.setInterval(function () {
                rotator.showNext(Telerik.Web.UI.RotatorScrollDirection.Left);
            }, rotator.get_frameDuration());
        }
    }

    function toggleAnimationType(sender, args) {
        var selectedType = args.get_item().get_text();
        $get("animationType").style.display = (selectedType == "SlideShow" || selectedType == "SlideShowButtons") ? "" : "none";
    }

    global.StartAutoRotation = StartAutoRotation;
    global.toggleAnimationType = toggleAnimationType;

})(window);