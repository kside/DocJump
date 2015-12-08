#target illustrator

function DocJump() {
    if (app.documents.length > 1) {
        var currentIndex;
        for (var i = 0; i < app.documents.length; i++) {
            if (app.documents[i] == app.activeDocument) {
                currentIndex = i;
            }
        };
        if (currentIndex < app.documents.length - 1) {
            app.documents[currentIndex + 1].activate();
        } else {
            app.documents[0].activate();
        }
    }
};
DocJump();
