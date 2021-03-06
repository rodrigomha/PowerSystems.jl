#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct KauraPLL <: FrequencyEstimator
        ω_lp::Float64
        kp_pll::Float64
        ki_pll::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int64
    end

Parameters of a Phase-Locked Loop (PLL) based on Kaura, Vikram, and Vladimir Blasko. "Operation of a phase locked loop system under distorted utility conditions." IEEE Transactions on Industry applications 33.1 (1997): 58-63.

# Arguments
- `ω_lp::Float64`: PLL low-pass filter frequency (rad/sec), validation range: (0, nothing)
- `kp_pll::Float64`: PLL proportional gain, validation range: (0, nothing)
- `ki_pll::Float64`: PLL integral gain, validation range: (0, nothing)
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`
- `n_states::Int64`
"""
mutable struct KauraPLL <: FrequencyEstimator
    "PLL low-pass filter frequency (rad/sec)"
    ω_lp::Float64
    "PLL proportional gain"
    kp_pll::Float64
    "PLL integral gain"
    ki_pll::Float64
    ext::Dict{String, Any}
    states::Vector{Symbol}
    n_states::Int64
end

function KauraPLL(ω_lp, kp_pll, ki_pll, ext=Dict{String, Any}(), )
    KauraPLL(ω_lp, kp_pll, ki_pll, ext, [:vd_pll, :vq_pll, :ε_pll, :θ_pll], 4, )
end

function KauraPLL(; ω_lp, kp_pll, ki_pll, ext=Dict{String, Any}(), )
    KauraPLL(ω_lp, kp_pll, ki_pll, ext, )
end

# Constructor for demo purposes; non-functional.
function KauraPLL(::Nothing)
    KauraPLL(;
        ω_lp=0,
        kp_pll=0,
        ki_pll=0,
        ext=Dict{String, Any}(),
    )
end

"""Get KauraPLL ω_lp."""
get_ω_lp(value::KauraPLL) = value.ω_lp
"""Get KauraPLL kp_pll."""
get_kp_pll(value::KauraPLL) = value.kp_pll
"""Get KauraPLL ki_pll."""
get_ki_pll(value::KauraPLL) = value.ki_pll
"""Get KauraPLL ext."""
get_ext(value::KauraPLL) = value.ext
"""Get KauraPLL states."""
get_states(value::KauraPLL) = value.states
"""Get KauraPLL n_states."""
get_n_states(value::KauraPLL) = value.n_states

"""Set KauraPLL ω_lp."""
set_ω_lp!(value::KauraPLL, val::Float64) = value.ω_lp = val
"""Set KauraPLL kp_pll."""
set_kp_pll!(value::KauraPLL, val::Float64) = value.kp_pll = val
"""Set KauraPLL ki_pll."""
set_ki_pll!(value::KauraPLL, val::Float64) = value.ki_pll = val
"""Set KauraPLL ext."""
set_ext!(value::KauraPLL, val::Dict{String, Any}) = value.ext = val
"""Set KauraPLL states."""
set_states!(value::KauraPLL, val::Vector{Symbol}) = value.states = val
"""Set KauraPLL n_states."""
set_n_states!(value::KauraPLL, val::Int64) = value.n_states = val
