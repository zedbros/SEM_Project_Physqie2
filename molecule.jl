begin
    struct Molecule
        masse::Float64   # [g/mol]
        radius::Float64  # [nm]
        chemical_formula # ["String"]
        pos              # (x, y, z) [m]
        velocity         # [m/s]
    end

    global initPos = (0,0,0)
    global initVel = (1,1,1)

    struct Helium
        Molecule(4.00260, 0.208, "He", initPos, initVel)
    end
    struct Neon
        Molecule(20.18, 0.02, "Ne" , initPos, initVel)
    end
    struct Nitrogen_gas
        Molecule(28.02, 0.092, "N2", initPos, initVel)
    end
    struct Oxygen
        Molecule(31.999, 0.066, "O2", initPos, initVel)
    end
end