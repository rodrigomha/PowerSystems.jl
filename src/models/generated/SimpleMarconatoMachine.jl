#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct SimpleMarconatoMachine <: Machine
        R::Float64
        Xd::Float64
        Xq::Float64
        Xd_p::Float64
        Xq_p::Float64
        Xd_pp::Float64
        Xq_pp::Float64
        Td0_p::Float64
        Tq0_p::Float64
        Td0_pp::Float64
        Tq0_pp::Float64
        T_AA::Float64
        ext::Dict{String, Any}
        γd::Float64
        γq::Float64
        states::Vector{Symbol}
        n_states::Int64
        internal::InfrastructureSystemsInternal
    end

Parameters of 4-states synchronous machine: Simplified Marconato model
 The derivative of stator fluxes (ψd and ψq) is neglected and ωψd = ψd and
 ωψq = ψq is assumed (i.e. ω=1.0). This is standard when transmission network
 dynamics is neglected.

# Arguments
- `R::Float64`: Resistance after EMF in machine per unit, validation range: (0, nothing)
- `Xd::Float64`: Reactance after EMF in d-axis per unit, validation range: (0, nothing)
- `Xq::Float64`: Reactance after EMF in q-axis per unit, validation range: (0, nothing)
- `Xd_p::Float64`: Transient reactance after EMF in d-axis per unit, validation range: (0, nothing)
- `Xq_p::Float64`: Transient reactance after EMF in q-axis per unit, validation range: (0, nothing)
- `Xd_pp::Float64`: Sub-Transient reactance after EMF in d-axis per unit, validation range: (0, nothing)
- `Xq_pp::Float64`: Sub-Transient reactance after EMF in q-axis per unit, validation range: (0, nothing)
- `Td0_p::Float64`: Time constant of transient d-axis voltage, validation range: (0, nothing)
- `Tq0_p::Float64`: Time constant of transient q-axis voltage, validation range: (0, nothing)
- `Td0_pp::Float64`: Time constant of sub-transient d-axis voltage, validation range: (0, nothing)
- `Tq0_pp::Float64`: Time constant of sub-transient q-axis voltage, validation range: (0, nothing)
- `T_AA::Float64`: Time constant of d-axis additional leakage, validation range: (0, nothing)
- `ext::Dict{String, Any}`
- `γd::Float64`
- `γq::Float64`
- `states::Vector{Symbol}`
- `n_states::Int64`
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct SimpleMarconatoMachine <: Machine
    "Resistance after EMF in machine per unit"
    R::Float64
    "Reactance after EMF in d-axis per unit"
    Xd::Float64
    "Reactance after EMF in q-axis per unit"
    Xq::Float64
    "Transient reactance after EMF in d-axis per unit"
    Xd_p::Float64
    "Transient reactance after EMF in q-axis per unit"
    Xq_p::Float64
    "Sub-Transient reactance after EMF in d-axis per unit"
    Xd_pp::Float64
    "Sub-Transient reactance after EMF in q-axis per unit"
    Xq_pp::Float64
    "Time constant of transient d-axis voltage"
    Td0_p::Float64
    "Time constant of transient q-axis voltage"
    Tq0_p::Float64
    "Time constant of sub-transient d-axis voltage"
    Td0_pp::Float64
    "Time constant of sub-transient q-axis voltage"
    Tq0_pp::Float64
    "Time constant of d-axis additional leakage"
    T_AA::Float64
    ext::Dict{String, Any}
    γd::Float64
    γq::Float64
    states::Vector{Symbol}
    n_states::Int64
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function SimpleMarconatoMachine(R, Xd, Xq, Xd_p, Xq_p, Xd_pp, Xq_pp, Td0_p, Tq0_p, Td0_pp, Tq0_pp, T_AA, ext=Dict{String, Any}(), )
    SimpleMarconatoMachine(R, Xd, Xq, Xd_p, Xq_p, Xd_pp, Xq_pp, Td0_p, Tq0_p, Td0_pp, Tq0_pp, T_AA, ext, ((Td0_pp*Xd_pp)/(Td0_p*Xd_p) )*(Xd-Xd_p), ((Tq0_pp*Xq_pp)/(Tq0_p*Xq_p) )*(Xq-Xq_p), [:eq_p, :ed_p, :eq_pp, :ed_pp], 4, InfrastructureSystemsInternal(), )
end

function SimpleMarconatoMachine(; R, Xd, Xq, Xd_p, Xq_p, Xd_pp, Xq_pp, Td0_p, Tq0_p, Td0_pp, Tq0_pp, T_AA, ext=Dict{String, Any}(), )
    SimpleMarconatoMachine(R, Xd, Xq, Xd_p, Xq_p, Xd_pp, Xq_pp, Td0_p, Tq0_p, Td0_pp, Tq0_pp, T_AA, ext, )
end

# Constructor for demo purposes; non-functional.
function SimpleMarconatoMachine(::Nothing)
    SimpleMarconatoMachine(;
        R=0,
        Xd=0,
        Xq=0,
        Xd_p=0,
        Xq_p=0,
        Xd_pp=0,
        Xq_pp=0,
        Td0_p=0,
        Tq0_p=0,
        Td0_pp=0,
        Tq0_pp=0,
        T_AA=0,
        ext=Dict{String, Any}(),
    )
end

"""Get SimpleMarconatoMachine R."""
get_R(value::SimpleMarconatoMachine) = value.R
"""Get SimpleMarconatoMachine Xd."""
get_Xd(value::SimpleMarconatoMachine) = value.Xd
"""Get SimpleMarconatoMachine Xq."""
get_Xq(value::SimpleMarconatoMachine) = value.Xq
"""Get SimpleMarconatoMachine Xd_p."""
get_Xd_p(value::SimpleMarconatoMachine) = value.Xd_p
"""Get SimpleMarconatoMachine Xq_p."""
get_Xq_p(value::SimpleMarconatoMachine) = value.Xq_p
"""Get SimpleMarconatoMachine Xd_pp."""
get_Xd_pp(value::SimpleMarconatoMachine) = value.Xd_pp
"""Get SimpleMarconatoMachine Xq_pp."""
get_Xq_pp(value::SimpleMarconatoMachine) = value.Xq_pp
"""Get SimpleMarconatoMachine Td0_p."""
get_Td0_p(value::SimpleMarconatoMachine) = value.Td0_p
"""Get SimpleMarconatoMachine Tq0_p."""
get_Tq0_p(value::SimpleMarconatoMachine) = value.Tq0_p
"""Get SimpleMarconatoMachine Td0_pp."""
get_Td0_pp(value::SimpleMarconatoMachine) = value.Td0_pp
"""Get SimpleMarconatoMachine Tq0_pp."""
get_Tq0_pp(value::SimpleMarconatoMachine) = value.Tq0_pp
"""Get SimpleMarconatoMachine T_AA."""
get_T_AA(value::SimpleMarconatoMachine) = value.T_AA
"""Get SimpleMarconatoMachine ext."""
get_ext(value::SimpleMarconatoMachine) = value.ext
"""Get SimpleMarconatoMachine γd."""
get_γd(value::SimpleMarconatoMachine) = value.γd
"""Get SimpleMarconatoMachine γq."""
get_γq(value::SimpleMarconatoMachine) = value.γq
"""Get SimpleMarconatoMachine states."""
get_states(value::SimpleMarconatoMachine) = value.states
"""Get SimpleMarconatoMachine n_states."""
get_n_states(value::SimpleMarconatoMachine) = value.n_states
"""Get SimpleMarconatoMachine internal."""
get_internal(value::SimpleMarconatoMachine) = value.internal

"""Set SimpleMarconatoMachine R."""
set_R!(value::SimpleMarconatoMachine, val::Float64) = value.R = val
"""Set SimpleMarconatoMachine Xd."""
set_Xd!(value::SimpleMarconatoMachine, val::Float64) = value.Xd = val
"""Set SimpleMarconatoMachine Xq."""
set_Xq!(value::SimpleMarconatoMachine, val::Float64) = value.Xq = val
"""Set SimpleMarconatoMachine Xd_p."""
set_Xd_p!(value::SimpleMarconatoMachine, val::Float64) = value.Xd_p = val
"""Set SimpleMarconatoMachine Xq_p."""
set_Xq_p!(value::SimpleMarconatoMachine, val::Float64) = value.Xq_p = val
"""Set SimpleMarconatoMachine Xd_pp."""
set_Xd_pp!(value::SimpleMarconatoMachine, val::Float64) = value.Xd_pp = val
"""Set SimpleMarconatoMachine Xq_pp."""
set_Xq_pp!(value::SimpleMarconatoMachine, val::Float64) = value.Xq_pp = val
"""Set SimpleMarconatoMachine Td0_p."""
set_Td0_p!(value::SimpleMarconatoMachine, val::Float64) = value.Td0_p = val
"""Set SimpleMarconatoMachine Tq0_p."""
set_Tq0_p!(value::SimpleMarconatoMachine, val::Float64) = value.Tq0_p = val
"""Set SimpleMarconatoMachine Td0_pp."""
set_Td0_pp!(value::SimpleMarconatoMachine, val::Float64) = value.Td0_pp = val
"""Set SimpleMarconatoMachine Tq0_pp."""
set_Tq0_pp!(value::SimpleMarconatoMachine, val::Float64) = value.Tq0_pp = val
"""Set SimpleMarconatoMachine T_AA."""
set_T_AA!(value::SimpleMarconatoMachine, val::Float64) = value.T_AA = val
"""Set SimpleMarconatoMachine ext."""
set_ext!(value::SimpleMarconatoMachine, val::Dict{String, Any}) = value.ext = val
"""Set SimpleMarconatoMachine γd."""
set_γd!(value::SimpleMarconatoMachine, val::Float64) = value.γd = val
"""Set SimpleMarconatoMachine γq."""
set_γq!(value::SimpleMarconatoMachine, val::Float64) = value.γq = val
"""Set SimpleMarconatoMachine states."""
set_states!(value::SimpleMarconatoMachine, val::Vector{Symbol}) = value.states = val
"""Set SimpleMarconatoMachine n_states."""
set_n_states!(value::SimpleMarconatoMachine, val::Int64) = value.n_states = val
"""Set SimpleMarconatoMachine internal."""
set_internal!(value::SimpleMarconatoMachine, val::InfrastructureSystemsInternal) = value.internal = val
