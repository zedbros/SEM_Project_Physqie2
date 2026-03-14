using GLMakie
include("molecule.jl")
begin
    m1 = Helium()
    m2 = Helium()

    function is_collision(m1, m2)
        x1, y1, z1 = m1.pos
        x2, y2, z2 = m2.pos

        dist = sqrt((x1-x2)^2 + (y1-y2)^2 + (z1-z2)^2)

        if (dist <= (m1.radius + m2.radius))
            return true
        end
        return false
    end

    is_collision(m1, m2)


    function simulation()
    end

    simulation()
end