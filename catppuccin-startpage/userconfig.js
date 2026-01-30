// User configuration for the startpage - update the palette, location, and your preferred tabs, categories, and links

// Define preferred palette for light and dark mode
// Available themes: latte, frappe, mocha, macchiato
const preferredLightTheme = latte;
const preferredDarkTheme = mocha;

let palette = initThemeSystem(preferredLightTheme, preferredDarkTheme);

const default_configuration = {
    overrideStorage: true,
    temperature: {
        location: "Curitiba",
        scale: "C",
    },
    clock: {
        format: "k:i p",
        icon_color: palette.maroon,
    },
    additionalClocks: [],
    search: {
        engines: {
            p: ["https://www.perplexity.ai/search/?q=", "PerplexityAI"],
            d: ["https://duckduckgo.com/?q=", "DuckDuckGo"],
            g: ["https://google.com/search?q=", "Google"],
        },
        default: "d",
    },
    keybindings: {
        "s": "search-bar",
    },
    disabled: [],
    localIcons: true,
    localFonts: true,
    fastlink: "",
    openLastVisitedTab: true,
    tabs: [
        {
            name: "myself",
            background_url: "src/img/banners/banner_18.gif",
            categories: [
                {
                    name: "workspace",
                    links: [
                        {
                            name: "gmail",
                            url: "https://mail.google.com",
                            icon: "brand-gmail",
                            icon_color: palette.red,
                        },
                        {
                            name: "drive",
                            url: "https://drive.google.com",
                            icon: "brand-google-drive",
                            icon_color: palette.green,
                        },
                        {
                            name: "github",
                            url: "https://github.com",
                            icon: "brand-github",
                            icon_color: palette.mauve,
                        },
                    ],
                },
                {
                    name: "ADA & UFPR",
                    links: [
                        {
                            name: "notion",
                            url: "https://www.notion.so",
                            icon: "brand-notion",
                            icon_color: palette.mauve,
                        },
                        {
                            name: "dropbox",
                            url: "https://www.notion.so/Apple-Developer-Academy-PUCPR-1977e2b39d1080388867f860363882ff",
                            icon: "box",
                            icon_color: palette.blue,
                        },
                        {
                            name: "confluence",
                            url: "https://home.atlassian.com/o/d0a38aa0-ff41-4b63-bb98-364286717113/?cloudId=33d6ea85-b5c4-442f-8ac5-cf953fbe714c",
                            icon: "file-text",
                            icon_color: palette.blue,
                        },
                        {
                            name: "ufpr",
                            url: "https://sistemas.ufpr.br/r",
                            icon: "building-arch",
                            icon_color: palette.peach,
                        },
                    ]
                },
                {
                    name: "english study",
                    links: [
                        {
                            name: "mario vergara",
                            url: "https://www.mariovergara.com",
                            icon: "school",
                            icon_color: palette.yellow,
                        },
                        {
                            name: "deepl",
                            url: "https://www.deepl.com",
                            icon: "language",
                            icon_color: palette.blue,
                        },
                        {
                            name: "youglish",
                            url: "https://youglish.com/",
                            icon: "video",
                            icon_color: palette.red,
                        },
                    ],
                },
            ],
        },
        {
            name: "dev",
            background_url: "src/img/banners/banner_19.gif",
            categories: [
                {
                    name: "swift & ios",
                    links: [
                        {
                            name: "swift 100 days",
                            url: "https://www.hackingwithswift.com/100/swiftui",
                            icon: "device-mobile",
                            icon_color: palette.red,
                        },
                        {
                            name: "swift.org",
                            url: "https://www.swift.org/",
                            icon: "brand-swift",
                            icon_color: palette.red,
                        },
                        {
                            name: "kodeco (rw)",
                            url: "https://www.kodeco.com/ios",
                            icon: "device-ipad",
                            icon_color: palette.green,
                        },
                    ],
                },
                {
                    name: "cybersec",
                    links: [
                        {
                            name: "tryhackme",
                            url: "https://tryhackme.com",
                            icon: "shield-lock",
                            icon_color: palette.red,
                        },
                        {
                            name: "osint4all",
                            url: "https://start.me/p/L1rEYQ/osint4all",
                            icon: "eye",
                            icon_color: palette.green,
                        },
                        {
                            name: "hackthebox",
                            url: "https://www.hackthebox.com/",
                            icon: "box",
                            icon_color: palette.green,
                        },
                        {
                            name: "portswigger",
                            url: "https://portswigger.net/web-security",
                            icon: "bug",
                            icon_color: palette.peach,
                        },
                    ],
                },
                {
                    name: "tools & resources",
                    links: [
                        {
                            name: "gemini",
                            url: "https://gemini.google.com",
                            icon: "sparkles",
                            icon_color: palette.blue,
                        },
                        {
                            name: "cheatsheets",
                            url: "https://cheatsheets.zip/",
                            icon: "file-code",
                            icon_color: palette.yellow,
                        },
                        {
                            name: "leetcode",
                            url: "https://leetcode.com",
                            icon: "code",
                            icon_color: palette.peach,
                        },
                    ],
                },
            ],
        },
        {
            name: "chi ll",
            background_url: "src/img/banners/banner_20.gif",
            categories: [
                {
                    name: "media",
                    links: [
                        {
                            name: "youtube",
                            url: "https://www.youtube.com",
                            icon: "brand-youtube",
                            icon_color: palette.red,
                        },
                        {
                            name: "hbo max",
                            url: "https://www.max.com",
                            icon: "movie",
                            icon_color: palette.mauve,
                        },
                        {
                            name: "roblox",
                            url: "https://www.roblox.com/users/57070126/profile",
                            icon: "assembly",
                            icon_color: palette.peach
                        }
                    ],
                },
                {
                    name: "social",
                    links: [
                        {
                            name: "reddit",
                            url: "https://www.reddit.com",
                            icon: "brand-reddit",
                            icon_color: palette.red,
                        },
                        {
                            name: "hacker news",
                            url: "https://news.ycombinator.com/",
                            icon: "news",
                            icon_color: palette.peach,
                        },
                    ],
                },
            ],
        },
    ],
};

const CONFIG = new Config(default_configuration, palette);

const root = document.querySelector(":root");
root.style.setProperty("--bg", palette.mantle);
root.style.setProperty("--accent", palette.blue);
