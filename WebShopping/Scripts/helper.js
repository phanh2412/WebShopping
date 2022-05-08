var Enum = {
    ResponseStatus: {
        SUCCESS: 'success',
        ERROR: 'error',
        UNAUTHOR: 'unauthor',
        UNAUTHEN: 'unauthen'
    }
}

var GetObjectProperty = function (obj, prop, defaultValue = '') {
    if (obj === '' || obj === null || typeof obj === 'undefined') return defaultValue;
    if (obj[prop] === '' || obj[prop] === null || typeof obj[prop] === 'undefined') return defaultValue;
    return obj[prop];
}
