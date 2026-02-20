using GLMakie
begin
    
    molecule = cumsum(randn(Point3f, 500))

    s = Scene(; camera = cam3d!)
    meshscatter!(s, molecule, markersize = rand(0.6:0.1:1.5, 500), color = rand(500))
    center!(s)
    s
end