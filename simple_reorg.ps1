# LFT Repository Reorganization - Simple Clean Version
# Run from: C:\Users\jdlon\Documents\LFT_GEN_19_LEAN

Write-Host "=== LFT Repository Reorganization ===" -ForegroundColor Cyan
Write-Host "Current directory: $(Get-Location)" -ForegroundColor Yellow

# Create branch
Write-Host "`nCreating reorganization branch..." -ForegroundColor Green
git checkout -b reorganize-structure

# Create folder structure
Write-Host "`nCreating new folders..." -ForegroundColor Yellow
$folders = @(
    "001-Papers/Theory_Narrative"
    "001-Papers/Position_Papers"
    "002-Derivations"
    "003-Lean_Proofs/Core"
    "004-Experiments/Predictions"
    "004-Experiments/Protocols"
    "005-Supporting_Data/Development_Notes"
    "005-Supporting_Data/Planning"
    "005-Supporting_Data/Figures"
    "005-Supporting_Data/Archive"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
    Write-Host "  Created: $folder" -ForegroundColor Gray
}

# Move files
Write-Host "`nMoving files..." -ForegroundColor Yellow

# Theory files
if (Test-Path "docs/theory-v5") {
    Move-Item -Path "docs/theory-v5/*" -Destination "001-Papers/Theory_Narrative/" -Force
    Write-Host "  Moved: theory-v5" -ForegroundColor Gray
}

# Position papers
if (Test-Path "docs/position-papers") {
    Move-Item -Path "docs/position-papers/*" -Destination "001-Papers/Position_Papers/" -Force
    Write-Host "  Moved: position-papers" -ForegroundColor Gray
}

# Derivations
if (Test-Path "docs/derivations-v5") {
    Move-Item -Path "docs/derivations-v5/*" -Destination "002-Derivations/" -Force
    Write-Host "  Moved: derivations-v5" -ForegroundColor Gray
}

# Lean Core modules
if (Test-Path "LFT/Core") {
    Move-Item -Path "LFT/Core/*" -Destination "003-Lean_Proofs/Core/" -Force
    Write-Host "  Moved: Lean Core modules" -ForegroundColor Gray
}

# Build plan
if (Test-Path "LFT/00-lean-build-plan.md") {
    Move-Item -Path "LFT/00-lean-build-plan.md" -Destination "003-Lean_Proofs/Build_Plan.md" -Force
    Write-Host "  Moved: build plan" -ForegroundColor Gray
}

# Predictions
if (Test-Path "docs/predictions") {
    Move-Item -Path "docs/predictions/*" -Destination "004-Experiments/Predictions/" -Force
    Write-Host "  Moved: predictions" -ForegroundColor Gray
}

# Sessions
if (Test-Path "docs/sessions") {
    Move-Item -Path "docs/sessions/*" -Destination "005-Supporting_Data/Development_Notes/" -Force
    Write-Host "  Moved: sessions" -ForegroundColor Gray
}

# Planning
if (Test-Path "planning") {
    Move-Item -Path "planning/*" -Destination "005-Supporting_Data/Planning/" -Force
    Write-Host "  Moved: planning" -ForegroundColor Gray
}
if (Test-Path "src/planning") {
    Move-Item -Path "src/planning/*" -Destination "005-Supporting_Data/Planning/" -Force
    Write-Host "  Moved: src/planning" -ForegroundColor Gray
}

# Figures
if (Test-Path "figures") {
    Move-Item -Path "figures/*" -Destination "005-Supporting_Data/Figures/" -Force
    Write-Host "  Moved: figures" -ForegroundColor Gray
}

# Lean map
if (Test-Path "lean-map") {
    Move-Item -Path "lean-map/*" -Destination "003-Lean_Proofs/" -Force
    Write-Host "  Moved: lean-map" -ForegroundColor Gray
}

# Copy Lean config for reference (keep originals in root)
Write-Host "`nLean config files stay in root..." -ForegroundColor Cyan
if (Test-Path "lakefile.toml") {
    Copy-Item -Path "lakefile.toml" -Destination "003-Lean_Proofs/lakefile.toml.reference" -Force
    Write-Host "  lakefile.toml - stays in root" -ForegroundColor Green
}
if (Test-Path "lean-toolchain") {
    Copy-Item -Path "lean-toolchain" -Destination "003-Lean_Proofs/lean-toolchain.reference" -Force
    Write-Host "  lean-toolchain - stays in root" -ForegroundColor Green
}

# Remove empty directories
Write-Host "`nCleaning up empty directories..." -ForegroundColor Yellow
$oldDirs = @("docs", "LFT_GEN_19_LEAN", "LFT", "planning", "src", "figures", "lean-map")
foreach ($dir in $oldDirs) {
    if (Test-Path $dir) {
        $items = Get-ChildItem -Path $dir -Recurse -Force -ErrorAction SilentlyContinue
        if ($items.Count -eq 0) {
            Remove-Item -Path $dir -Recurse -Force
            Write-Host "  Removed: $dir" -ForegroundColor Gray
        } else {
            Write-Host "  Keeping: $dir (not empty)" -ForegroundColor Yellow
        }
    }
}

# Update README
Write-Host "`nUpdating README..." -ForegroundColor Cyan
$readme = @"
# Logic Field Theory

**Deriving Quantum Mechanics from the Three Fundamental Laws of Logic**

## Repository Structure

- **001-Papers/** - Theory narrative and position papers
- **002-Derivations/** - Mathematical proofs (D00-D06)
- **003-Lean_Proofs/** - Formal verification in Lean 4
- **004-Experiments/** - Predictions and protocols
- **005-Supporting_Data/** - Notes, planning, archives

## Quick Start

1. Begin with 001-Papers/Theory_Narrative/ for the complete theory
2. See 002-Derivations/ for mathematical details
3. Explore 003-Lean_Proofs/ for formal verification
4. Review 004-Experiments/ for testable predictions

## Author

James D. Longmire  
Email: longmire.jd@gmail.com
"@

$readme | Out-File -FilePath "README.md" -Encoding UTF8

# Done
Write-Host "`n=== REORGANIZATION COMPLETE ===" -ForegroundColor Green
Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "1. Review changes: git status" -ForegroundColor White
Write-Host "2. Stage changes: git add -A" -ForegroundColor White
Write-Host "3. Commit: git commit -m 'Reorganize into numbered structure'" -ForegroundColor White
Write-Host "4. Push branch: git push -u origin reorganize-structure" -ForegroundColor White
Write-Host "`nSafe to test - you're on a branch!" -ForegroundColor Cyan