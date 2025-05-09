import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {
    var name = "Hello World"
    var titleSuffix = " – My Awesome Site"
    var url = URL(static: "https://www.Curator-of-Trials.github.io")
    var builtInIconsEnabled = true

    var author = "John Appleseed"

    var homePage = Home()
    var layout = MainLayout()
    var staticPages: [any StaticPage] {
        Blog()
        Contact()
        Help()
        Reviews()
        Services()
    }

    var articlePages: [any ArticlePage] {
        BlogPost()
    }
}
