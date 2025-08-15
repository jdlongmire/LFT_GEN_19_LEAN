# Direct LFT Repository Reorganization
# Run from: C:\Users\jdlon\Documents\LFT_GEN_19_LEAN

# STEP 1: Confirm location and backup
Write-Host "=== LFT Repository Reorganization ===" -ForegroundColor Cyan
Write-Host "Current directory: $(Get-Location)" -ForegroundColor Yellow

# Verify we're in the right place
if (-not (Test-Path ".git")) {
    Write-Host "WARNING: No .git folder found. Are you in the repository root?" -ForegroundColor Red
    Write-Host "Expected: C:\Users\jdlon\Documents\LFT_GEN_19_LEAN" -ForegroundColor Yellow
    Read-Host "Press Enter to continue anyway, or Ctrl+C to abort"
}

Write-Host "`nBackup .zip downloaded? (You confirmed yes)" -ForegroundColor Green

# Show what stays in root
Write-Host "`n=== Files that will STAY in root ===" -ForegroundColor Magenta
Write-Host "  • lakefile.toml (Lean build config)" -ForegroundColor White
Write-Host "  • lean-toolchain (Lean version)" -ForegroundColor White
Write-Host "  • .gitignore" -ForegroundColor White
Write-Host "  • LICENSE" -ForegroundColor White
Write-Host "  • README.md (will be updated)" -ForegroundColor White
Write-Host "  • .git/ (git repository)" -ForegroundColor White
Write-Host "  • .lake/ (Lean build artifacts)" -ForegroundColor White

# STEP 2: Create a new branch for the reorganization
Write-Host "`n=== Creating new branch ===" -ForegroundColor Cyan
git checkout -b reorganize-structure
Write-Host "Now on branch: $(git branch --show-current)" -ForegroundColor Green

# STEP 3: Create new folder structure
Write-Host "`n=== Creating new folder structure ===" -ForegroundColor Yellow

$folders = @(
    "001-Papers/Theory_Narrative",
    "001-Papers/Position_Papers",
    "002-Derivations",
    "003-Lean_Proofs/Core",
    "004-Experiments/Predictions",
    "004-Experiments/Protocols",
    "005-Supporting_Data/Development_Notes",
    "005-Supporting_Data/Planning",
    "005-Supporting_Data/Figures",
    "005-Supporting_Data/Archive/Historical_Versions"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
    Write-Host "  ✓ Created $folder" -ForegroundColor Gray
}

# STEP 4: Move files to new structure
Write-Host "`n=== Moving files to new structure ===" -ForegroundColor Yellow

# Theory Narrative
if (Test-Path "docs/theory-v5") {
    Write-Host "Moving theory narrative files..."
    Move-Item -Path "docs/theory-v5/*" -Destination "001-Papers/Theory_Narrative/" -Force
}

# Position Papers
if (Test-Path "docs/position-papers") {
    Write-Host "Moving position papers..."
    Move-Item -Path "docs/position-papers/*" -Destination "001-Papers/Position_Papers/" -Force
}

# Derivations
if (Test-Path "docs/derivations-v5") {
    Write-Host "Moving derivation files..."
    Move-Item -Path "docs/derivations-v5/*" -Destination "002-Derivations/" -Force
}

# Lean Proofs
Write-Host "Looking for Lean modules..."
$leanSourcePaths = @(
    "LFT_GEN_19_LEAN/LFT/Core",
    "LFT/Core",
    "Core"
)
$foundLeanPath = $false
foreach ($path in $leanSourcePaths) {
    if (Test-Path $path) {
        Write-Host "  ✓ Found Lean modules at: $path" -ForegroundColor Green
        Move-Item -Path "$path/*" -Destination "003-Lean_Proofs/Core/" -Force
        $foundLeanPath = $true
        break
    }
}
if (-not $foundLeanPath) {
    Write-Host "  ⚠ No Lean Core modules found in expected locations" -ForegroundColor Yellow
}

# Lean build files - KEEP IN ROOT (just copy for reference)
Write-Host "Copying Lean config files for reference (keeping originals in root)..."
if (Test-Path "lakefile.toml") {
    Copy-Item -Path "lakefile.toml" -Destination "003-Lean_Proofs/lakefile.toml.reference" -Force
    Write-Host "  ✓ lakefile.toml stays in root (reference copy in 003-Lean_Proofs)" -ForegroundColor Green
}
if (Test-Path "lean-toolchain") {
    Copy-Item -Path "lean-toolchain" -Destination "003-Lean_Proofs/lean-toolchain.reference" -Force
    Write-Host "  ✓ lean-toolchain stays in root (reference copy in 003-Lean_Proofs)" -ForegroundColor Green
}
if (Test-Path ".gitignore") {
    Write-Host "  ✓ .gitignore stays in root" -ForegroundColor Green
}
if (Test-Path "LICENSE") {
    Write-Host "  ✓ LICENSE stays in root" -ForegroundColor Green
}
if (Test-Path "LFT/00-lean-build-plan.md") {
    Move-Item -Path "LFT/00-lean-build-plan.md" -Destination "003-Lean_Proofs/Build_Plan.md" -Force
}

# Experiments
if (Test-Path "docs/predictions") {
    Write-Host "Moving prediction files..."
    Move-Item -Path "docs/predictions/*" -Destination "004-Experiments/Predictions/" -Force
}

# Supporting Data - Sessions
if (Test-Path "docs/sessions") {
    Write-Host "Moving session notes..."
    Move-Item -Path "docs/sessions/*" -Destination "005-Supporting_Data/Development_Notes/" -Force
}

# Supporting Data - Planning
if (Test-Path "planning") {
    Write-Host "Moving planning documents..."
    Move-Item -Path "planning/*" -Destination "005-Supporting_Data/Planning/" -Force
}
if (Test-Path "src/planning") {
    Move-Item -Path "src/planning/*" -Destination "005-Supporting_Data/Planning/" -Force
}

# Figures
if (Test-Path "figures") {
    Write-Host "Moving figures..."
    Move-Item -Path "figures/*" -Destination "005-Supporting_Data/Figures/" -Force
}

# Lean map
if (Test-Path "lean-map") {
    Write-Host "Moving lean-map..."
    Move-Item -Path "lean-map/*" -Destination "003-Lean_Proofs/" -Force
}

Write-Host "`n=== File moving complete ===" -ForegroundColor Green

# STEP 5: Clean up empty old directories
Write-Host "`n=== Removing empty old directories ===" -ForegroundColor Yellow

$oldDirs = @("docs", "LFT_GEN_19_LEAN", "LFT", "planning", "src", "figures", "lean-map")
foreach ($dir in $oldDirs) {
    if (Test-Path $dir) {
        # Check if directory has any files/subdirectories
        $items = Get-ChildItem -Path $dir -Recurse -Force -ErrorAction SilentlyContinue
        if ($null -eq $items -or $items.Count -eq 0) {
            Remove-Item -Path $dir -Recurse -Force
            Write-Host "  ✓ Removed empty directory: $dir" -ForegroundColor Gray
        } else {
            Write-Host "  ⚠ Directory not empty, keeping: $dir" -ForegroundColor Yellow
            # Show what's left
            $remaining = Get-ChildItem -Path $dir -Recurse -File | Select-Object -First 3
            foreach ($file in $remaining) {
                Write-Host "    - $($file.FullName.Replace($PWD, '.'))" -ForegroundColor DarkYellow
            }
            if ((Get-ChildItem -Path $dir -Recurse -File).Count -gt 3) {
                Write-Host "    - ..." -ForegroundColor DarkYellow
            }
        }
    }
}

# STEP 6: Create main README for new structure
Write-Host "`n=== Creating updated README ===" -ForegroundColor Cyan

@"
# Logic Field Theory

**Deriving Quantum Mechanics from the Three Fundamental Laws of Logic**

[![Theory: CC BY-NC-SA 4.0](https://img.shields.io/badge/Theory-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Code: MIT](https://img.shields.io/badge/Code-MIT-green.svg)](https://opensource.org/licenses/MIT)

## Repository Structure

- **[001-Papers/](001-Papers/)** - Theory narrative and position papers
- **[002-Derivations/](002-Derivations/)** - Mathematical proofs (D00-D06)
- **[003-Lean_Proofs/](003-Lean_Proofs/)** - Formal verification in Lean 4
- **[004-Experiments/](004-Experiments/)** - Predictions and protocols
- **[005-Supporting_Data/](005-Supporting_Data/)** - Notes, planning, archives

## Quick Start

1. Begin with [001-Papers/Theory_Narrative/](001-Papers/Theory_Narrative/) for the complete theory
2. See [002-Derivations/](002-Derivations/) for mathematical details
3. Explore [003-Lean_Proofs/](003-Lean_Proofs/) for formal verification
4. Review [004-Experiments/](004-Experiments/) for testable predictions

## Key Results

- **Quantum mechanics emerges necessarily** from logical consistency
- **Complex numbers required** (not real or quaternionic)
- **Standard Model gauge group U(1)×SU(2)×SU(3)** uniquely determined
- **Exactly 3 fermion generations** from mathematical necessity
- **Born rule derived** (not postulated)

## Critical Experiment

The theory predicts decoherence time scales as τ_D ∝ (ξ/ℓ₀)² (positive slope) versus standard QM's τ_D ∝ 1/size (negative slope). This opposite behavior enables definitive experimental validation.

## Author

**James D. Longmire**  
Northrop Grumman Fellow (independent research)  
Email: longmire.jd@gmail.com  
ORCID: [0009-0009-1383-7698](https://orcid.org/0009-0009-1383-7698)
"@ | Out-File -FilePath "README.md" -Encoding UTF8

# STEP 7: Show git status
Write-Host "`n=== Git Status ===" -ForegroundColor Cyan
git status -s

Write-Host "`n=== Reorganization Complete! ===" -ForegroundColor Green
Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "1. Review the changes: " -ForegroundColor White
Write-Host "     git status" -ForegroundColor Gray
Write-Host "2. Stage all changes: " -ForegroundColor White
Write-Host "     git add -A" -ForegroundColor Gray
Write-Host "3. Commit the reorganization: " -ForegroundColor White
Write-Host "     git commit -m 'Reorganize repository into numbered structure'" -ForegroundColor Gray
Write-Host "4. Push the branch: " -ForegroundColor White
Write-Host "     git push -u origin reorganize-structure" -ForegroundColor Gray
Write-Host "5. Create a Pull Request on GitHub" -ForegroundColor White

Write-Host "`nIf anything went wrong, restore from your .zip backup!" -ForegroundColor Cyan