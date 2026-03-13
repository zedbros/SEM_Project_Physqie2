begin
    global initPos = (0,0,0)
    global initVel = (1,1,1)

    mutable struct Helium
        masse::Float64           # [g/mol]
        radius::Float64          # [nm]
        chemical_formula::String # ["String"]
        pos                      # (x, y, z) [m]
        velocity                 # [m/s]
        Helium() = new(4.0026, 0.208, "He", initPos, initVel)
    end
    mutable struct Neon
        masse::Float64           # [g/mol]
        radius::Float64          # [nm]
        chemical_formula::String # ["String"]
        pos                      # (x, y, z) [m]
        velocity                 # [m/s]
        Neon() = new(20.18, 0.02, "Ne", initPos, initVel)
    end
    mutable struct Nitrogen_gas
        masse::Float64           # [g/mol]
        radius::Float64          # [nm]
        chemical_formula::String # ["String"]
        pos                      # (x, y, z) [m]
        velocity                 # [m/s]
        Nitrogen_gas() = new(28.02, 0.092, "N2", initPos, initVel)
    end
    mutable struct Oxygen
        masse::Float64           # [g/mol]
        radius::Float64          # [nm]
        chemical_formula::String # ["String"]
        pos                      # (x, y, z) [m]
        velocity                 # [m/s]
        Oxygen() = new(31.999, 0.066, "O2", initPos, initVel)
    end
end