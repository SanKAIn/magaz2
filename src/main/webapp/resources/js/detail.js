function loadContent(root, suffix, currentPage) {
    let gets = Get(root + "/all/filter" + suffix).responseText;
    let objects = JSON.parse(gets);
    // let detailCount = Get(root + "/all/filter/count" + suffix).responseText;
    let detailCount = objects.length > 0 ? objects[0].total : 0;
    let div = document.getElementById("det");
        div.innerHTML = "";
        createPaging(document.getElementById("limit").value, detailCount, currentPage);

    for (let i = 0; i < objects.length; i++) {
        let div1 = document.createElement("div");
            div1.setAttribute("class", "col mb-4")
        let div2 = document.createElement("div");
            div2.setAttribute("class", "card h-100");
            div1.appendChild(div2);
        let img = document.createElement("img");
            img.setAttribute("src", objects[i].image);
            img.setAttribute("class", "card-img-top");
            img.setAttribute("alt", "No image");
            div2.appendChild(img);
        let div3 = document.createElement("div");
            div3.setAttribute("class", "card-body");
            div2.appendChild(div3);
        let a1 = document.createElement("a");
            a1.setAttribute("href", "/all/" +objects[i].id);
            div3.appendChild(a1);
        let h5_1 = document.createElement("h5");
            h5_1.setAttribute("class", "card-title");
            h5_1.appendChild(document.createTextNode(objects[i].partName));
            a1.appendChild(h5_1);
        let form = document.createElement("form");
            form.setAttribute("action", "/all/basket");
            form.setAttribute("method", "GET");
            div3.appendChild(form);
        let input = document.createElement("input");
            input.setAttribute("type", "hidden");
            input.setAttribute("value", objects[i].id);
            input.setAttribute("name", "detailId");
            form.appendChild(input);
        let button = document.createElement("button");
            button.setAttribute("type", "submit");
            button.setAttribute("class", "btn btn-success");
            button.appendChild(document.createTextNode("В корзину"));
            form.appendChild(button);
        let p = document.createElement("p");
            p.setAttribute("class", "card-text");
            p.setAttribute("style", "margin-top: 10px");
            p.appendChild(document.createTextNode(objects[i].amount + " " + objects[i].kod + " " + objects[i].cost/100 + 'грн'));
            div3.appendChild(p);
            div.appendChild(div1);
    }

}

function createPaging(detailsInPage, detailsSummary, currentPage) {
    let pagingBar = document.getElementById("paging-bar");
    pagingBar.innerHTML = "";
    let pagesCount = detailsSummary / detailsInPage;
    if (pagesCount > 1) {

        for (let i = 0; i < pagesCount; i++) {
            let li = document.createElement("li");
            if (i === currentPage - 1) {
                li.setAttribute("class", "page-item disabled");
            } else {
                li.setAttribute("class", "page-item");
            }
            let a = document.createElement("a");
            a.setAttribute("class", "page-link");
            a.setAttribute("href", "#");
            let root = document.getElementById("root").getAttribute("about");
            a.setAttribute("onclick", "processSearch('" + root + "', " + (i + 1) + ")");
            a.appendChild(document.createTextNode((i + 1).toString()));
            li.appendChild(a);
            pagingBar.appendChild(li);
        }
    }
}

function processSearch(root, currentPage) {
    let filter = document.getElementById("countDetails");
    let order = document.getElementById("order").value;
    let limit = document.getElementById("limit").value;
    let sufix = "?";
    sufix = loop(filter, sufix);
    if (!sufix.endsWith("?")){
        sufix += "&pageNumber=" + (+currentPage - 1);
    }else {
        sufix += "pageNumber=" + (+currentPage - 1);
    }

    sufix += "&pageSize=" + +limit;
    sufix += "&order=" + order.toUpperCase();
    loadContent(root, sufix, currentPage);
}

function Get(requestUrl) {
    let httpRequest = new XMLHttpRequest(); // a new request
    httpRequest.open("GET", requestUrl, false);
    httpRequest.send(null);
    if (httpRequest.status === 400) {
        $('#error-text').text("Bad request to GET " + requestUrl);
        $('#myModal').modal('show');
    }
    if (httpRequest.status === 404) {
        $('#error-text').text("Not found GET " + requestUrl);
        $('#myModal').modal('show');
    }
    return httpRequest;
}

function post(requestUrl, body) {
    let httpRequest = new XMLHttpRequest();
    httpRequest.open("POST", requestUrl, false);
    httpRequest.setRequestHeader("Content-type", "application/json;charset=UTF-8");
    httpRequest.send(body);
    if (httpRequest.status === 400) {
        $('#error-text').text("Bad request to POST " + requestUrl);
        $('#myModal').modal('show');
    }
    if (httpRequest.status === 404) {
        $('#error-text').text("Not found POST " + requestUrl);
        $('#myModal').modal('show');
    }
    return httpRequest;
}

function Delete(requestUrl) {
    let httpRequest = new XMLHttpRequest(); // a new request
    httpRequest.open("DELETE", requestUrl, false);
    httpRequest.send(null);
    console.log(httpRequest.status);
    if (httpRequest.status === 400) {
        $('#error-text').text("Bad request to DELETE " + requestUrl);
        $('#myModal').modal('show');
    }
    if (httpRequest.status === 404) {
        $('#error-text').text("Not found DELETE " + requestUrl);
        $('#myModal').modal('show');
    }
    return httpRequest;
}

function loop(node, text) {
    let nodes = node.childNodes;
    for (let i = 0; i < nodes.length; i++) {
        if (nodes[i].type === 'checkbox' && nodes[i].checked){
            text += $(nodes[i]).parent().parent().attr('title');
            text += "=";
            text += $(nodes[i]).attr('id');
        }
        if (!nodes[i]) {continue;}
        if (nodes[i].childNodes.length > 0) {text = loop(nodes[i], text);}
    }
    return text;
}

function loadBrand(objects, suffix) {
    /*let gets = Get(root + "/all/filter" + suffix).responseText;
    let objects = JSON.parse(gets);
    let detailCount = Get(root + "/all/filter/count" + suffix).responseText;*/
    let div = document.getElementById("det");
    div.innerHTML = "";
    createPaging(document.getElementById("limit").value, detailCount, currentPage);

    for (let i = 0; i < objects.length; i++) {
        let div1 = document.createElement("div");
        div1.setAttribute("class", "col mb-4")
        let div2 = document.createElement("div");
        div2.setAttribute("class", "card h-100");
        div1.appendChild(div2);
        let img = document.createElement("img");
        img.setAttribute("src", objects[i].image);
        img.setAttribute("class", "card-img-top");
        img.setAttribute("alt", "No image");
        div2.appendChild(img);
        let div3 = document.createElement("div");
        div3.setAttribute("class", "card-body");
        div2.appendChild(div3);
        let a1 = document.createElement("a");
        a1.setAttribute("href", "/all/" +objects[i].id);
        div3.appendChild(a1);
        let h5_1 = document.createElement("h5");
        h5_1.setAttribute("class", "card-title");
        h5_1.appendChild(document.createTextNode(objects[i].partName));
        a1.appendChild(h5_1);
        let form = document.createElement("form");
        form.setAttribute("action", "/all/basket");
        form.setAttribute("method", "GET");
        div3.appendChild(form);
        let input = document.createElement("input");
        input.setAttribute("type", "hidden");
        input.setAttribute("value", objects[i].id);
        input.setAttribute("name", "detailId");
        form.appendChild(input);
        let button = document.createElement("button");
        button.setAttribute("type", "submit");
        button.setAttribute("class", "btn btn-success");
        button.appendChild(document.createTextNode("В корзину"));
        form.appendChild(button);
        let p = document.createElement("p");
        p.setAttribute("class", "card-text");
        p.setAttribute("style", "margin-top: 10px");
        p.appendChild(document.createTextNode(objects[i].amount + " " + objects[i].kod + " " + objects[i].cost/100 + 'грн'));
        div3.appendChild(p);
        div.appendChild(div1);
    }
}