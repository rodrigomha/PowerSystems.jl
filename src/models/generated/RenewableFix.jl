#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct RenewableFix <: RenewableGen
        name::String
        available::Bool
        bus::Bus
        activepower::Float64
        reactivepower::Float64
        rating::Float64
        primemover::PrimeMovers.PrimeMover
        powerfactor::Float64
        basepower::Float64
        services::Vector{Service}
        dynamic_injector::Union{Nothing, DynamicInjection}
        ext::Dict{String, Any}
        forecasts::InfrastructureSystems.Forecasts
        internal::InfrastructureSystemsInternal
    end

Data Structure for fixed renewable generation technologies.

# Arguments
- `name::String`
- `available::Bool`
- `bus::Bus`
- `activepower::Float64`
- `reactivepower::Float64`
- `rating::Float64`: Thermal limited MVA Power Output of the unit. <= Capacity, validation range: (0, nothing), action if invalid: error
- `primemover::PrimeMovers.PrimeMover`: PrimeMover Technology according to EIA 923
- `powerfactor::Float64`, validation range: (0, 1), action if invalid: error
- `basepower::Float64`: Base power of the unit in system base per unit, validation range: (0, nothing), action if invalid: warn
- `services::Vector{Service}`: Services that this device contributes to
- `dynamic_injector::Union{Nothing, DynamicInjection}`: corresponding dynamic injection device
- `ext::Dict{String, Any}`
- `forecasts::InfrastructureSystems.Forecasts`: internal forecast storage
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct RenewableFix <: RenewableGen
    name::String
    available::Bool
    bus::Bus
    activepower::Float64
    reactivepower::Float64
    "Thermal limited MVA Power Output of the unit. <= Capacity"
    rating::Float64
    "PrimeMover Technology according to EIA 923"
    primemover::PrimeMovers.PrimeMover
    powerfactor::Float64
    "Base power of the unit in system base per unit"
    basepower::Float64
    "Services that this device contributes to"
    services::Vector{Service}
    "corresponding dynamic injection device"
    dynamic_injector::Union{Nothing, DynamicInjection}
    ext::Dict{String, Any}
    "internal forecast storage"
    forecasts::InfrastructureSystems.Forecasts
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function RenewableFix(name, available, bus, activepower, reactivepower, rating, primemover, powerfactor, basepower, services=Device[], dynamic_injector=nothing, ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    RenewableFix(name, available, bus, activepower, reactivepower, rating, primemover, powerfactor, basepower, services, dynamic_injector, ext, forecasts, InfrastructureSystemsInternal(), )
end

function RenewableFix(; name, available, bus, activepower, reactivepower, rating, primemover, powerfactor, basepower, services=Device[], dynamic_injector=nothing, ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    RenewableFix(name, available, bus, activepower, reactivepower, rating, primemover, powerfactor, basepower, services, dynamic_injector, ext, forecasts, )
end

# Constructor for demo purposes; non-functional.
function RenewableFix(::Nothing)
    RenewableFix(;
        name="init",
        available=false,
        bus=Bus(nothing),
        activepower=0.0,
        reactivepower=0.0,
        rating=0.0,
        primemover=PrimeMovers.OT,
        powerfactor=1.0,
        basepower=0.0,
        services=Device[],
        dynamic_injector=nothing,
        ext=Dict{String, Any}(),
        forecasts=InfrastructureSystems.Forecasts(),
    )
end


InfrastructureSystems.get_name(value::RenewableFix) = value.name
"""Get RenewableFix available."""
get_available(value::RenewableFix) = value.available
"""Get RenewableFix bus."""
get_bus(value::RenewableFix) = value.bus
"""Get RenewableFix activepower."""
get_activepower(value::RenewableFix) = value.activepower
"""Get RenewableFix reactivepower."""
get_reactivepower(value::RenewableFix) = value.reactivepower
"""Get RenewableFix rating."""
get_rating(value::RenewableFix) = value.rating
"""Get RenewableFix primemover."""
get_primemover(value::RenewableFix) = value.primemover
"""Get RenewableFix powerfactor."""
get_powerfactor(value::RenewableFix) = value.powerfactor
"""Get RenewableFix basepower."""
get_basepower(value::RenewableFix) = value.basepower
"""Get RenewableFix services."""
get_services(value::RenewableFix) = value.services
"""Get RenewableFix dynamic_injector."""
get_dynamic_injector(value::RenewableFix) = value.dynamic_injector
"""Get RenewableFix ext."""
get_ext(value::RenewableFix) = value.ext

InfrastructureSystems.get_forecasts(value::RenewableFix) = value.forecasts
"""Get RenewableFix internal."""
get_internal(value::RenewableFix) = value.internal


InfrastructureSystems.set_name!(value::RenewableFix, val::String) = value.name = val
"""Set RenewableFix available."""
set_available!(value::RenewableFix, val::Bool) = value.available = val
"""Set RenewableFix bus."""
set_bus!(value::RenewableFix, val::Bus) = value.bus = val
"""Set RenewableFix activepower."""
set_activepower!(value::RenewableFix, val::Float64) = value.activepower = val
"""Set RenewableFix reactivepower."""
set_reactivepower!(value::RenewableFix, val::Float64) = value.reactivepower = val
"""Set RenewableFix rating."""
set_rating!(value::RenewableFix, val::Float64) = value.rating = val
"""Set RenewableFix primemover."""
set_primemover!(value::RenewableFix, val::PrimeMovers.PrimeMover) = value.primemover = val
"""Set RenewableFix powerfactor."""
set_powerfactor!(value::RenewableFix, val::Float64) = value.powerfactor = val
"""Set RenewableFix basepower."""
set_basepower!(value::RenewableFix, val::Float64) = value.basepower = val
"""Set RenewableFix services."""
set_services!(value::RenewableFix, val::Vector{Service}) = value.services = val
"""Set RenewableFix ext."""
set_ext!(value::RenewableFix, val::Dict{String, Any}) = value.ext = val

InfrastructureSystems.set_forecasts!(value::RenewableFix, val::InfrastructureSystems.Forecasts) = value.forecasts = val
"""Set RenewableFix internal."""
set_internal!(value::RenewableFix, val::InfrastructureSystemsInternal) = value.internal = val
