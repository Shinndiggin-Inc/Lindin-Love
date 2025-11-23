# ============================================
# Create Lindin Love Freeze-Dried Foods Website Structure
# Author: Joshua Irvine
# ============================================

# Root folder name (change if needed)
$root = "LindinLoveWebsite"

# Create root
New-Item -Path $root -ItemType Directory -Force | Out-Null

# List of folders to create
$folders = @(
    "$root\Upload",
    "$root\Upload\Assets",
    "$root\Upload\Gallery",
    "$root\Upload\Products",
    "$root\Styles",
    "$root\Scripts"
)

# Create each folder
foreach ($folder in $folders) {
    New-Item -Path $folder -ItemType Directory -Force | Out-Null
}

# Create placeholder files
$files = @(
    "$root\index.html",
    "$root\about.html",
    "$root\flavors.html",
    "$root\faq.html",
    "$root\privacy.html",
    "$root\terms.html",
    "$root\README.md"
)

foreach ($file in $files) {
    New-Item -Path $file -ItemType File -Force | Out-Null
}

# Helpful placeholder images (empty files)
$placeholderImages = @(
    "$root\Upload\Assets\logo.png",
    "$root\Upload\Assets\banner_hero.jpg",
    "$root\Upload\Assets\about-lindin.jpg",
    "$root\Upload\Assets\farm-background.jpg",
    "$root\Upload\Assets\favicon.ico",
    "$root\Upload\Gallery\fruit-mix.jpg",
    "$root\Upload\Gallery\candy.jpg",
    "$root\Upload\Gallery\seasonal.jpg",
    "$root\Upload\Gallery\strawberry.jpg",
    "$root\Upload\Gallery\marshmallow.jpg",
    "$root\Upload\Gallery\peach.jpg",
    "$root\Upload\Products\product-template.jpg"
)

foreach ($img in $placeholderImages) {
    New-Item -Path $img -ItemType File -Force | Out-Null
}

Write-Host "Lindin Love folder structure created successfully!" -ForegroundColor Green
