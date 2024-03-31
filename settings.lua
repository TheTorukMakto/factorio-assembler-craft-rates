data:extend({
    {
        type = "string-setting",
        name = "acr-blacklist",
        localised_name = "Entity blacklist",
        localised_description = 
            "List of entities that should not show the production rate GUI."
            .."\nFormat as (entity-1,entity-2,... etc), using the internal name defined in the entity prototype."
            .."\n\nPrototype names can be accessed via the prototypes GUI (default CTRL+SHIFT+E)."
            .."\nAternatively, opening the prototype explorer (default CTRL+SHIFT+F) will show the prototype data for the currently selected entity."
            ,
        setting_type = "startup",
        default_value = "",
        allow_blank = true,
        auto_trim = true
    }
})