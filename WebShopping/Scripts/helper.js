var Enum = {
    ResponseStatus: { SUCCESS: 'success', ERROR: 'error', UNAUTHOR: 'unauthor', UNAUTHEN: 'unauthen' },
    OrderStatus: { CHO_XAC_NHAN: 'Chờ xác nhận', DANG_XU_LY: 'Đang xử lý', DA_THANH_TOAN: 'Đã thanh toán', HOAN_THANH: 'Hoàn thành', KHACH_HANG_HUY: 'Khách hàng hủy', CUA_HANG_HUY: 'Cửa hàng hủy' }
};

var GetObjectProperty = function (obj, prop, defaultValue = '') {
    if (obj === '' || obj === null || typeof obj === 'undefined') return defaultValue;
    if (obj[prop] === '' || obj[prop] === null || typeof obj[prop] === 'undefined') return defaultValue;
    return obj[prop];
};
var NumberFormat = function (num, joinChar = ',') { try { const numString = num + ''; var numberPart = numString.split('.'); var s = numberPart[0]; var arr = []; while (s.length > 0) { if (s.length > 3) { arr.push(s.slice(s.length - 3, s.length)); s = s.slice(0, s.length - 3); } else { arr.push(s); s = ''; } } return arr.reverse().join(joinChar) + (numberPart.length > 1 ? '.' + numberPart[1] : ''); } catch (ex) { return ''; } }