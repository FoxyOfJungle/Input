/// @param key
/// @param verb
/// @param [alternate]

function input_default_key(_key, _verb, _alternate = 0)
{
    if (INPUT_WARNING_DEPRECATED) __input_error("This function has been deprecated\n(Set INPUT_WARNING_DEPRECATED to <false> to ignore this warning)");
    
    input_verb_build(_verb, input_binding_key(_key), _alternate);
}