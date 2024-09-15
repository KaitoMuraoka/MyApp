import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }
    
    app.get("hello") { req -> EventLoopFuture<View> in
        return req.view.render("hello", ["name": "Vapor Leaf"])
    }
    
    app.get("swift") { req -> EventLoopFuture<View> in
        return req.view.render("swift", ["name": "Swift"])
    }
}
