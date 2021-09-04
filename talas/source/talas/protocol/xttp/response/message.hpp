///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2021 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: message.hpp
///
/// Author: $author$
///   Date: 2/20/2021
///////////////////////////////////////////////////////////////////////
#ifndef TALAS_PROTOCOL_XTTP_RESPONSE_MESSAGE_HPP
#define TALAS_PROTOCOL_XTTP_RESPONSE_MESSAGE_HPP

#include "talas/protocol/xttp/message/part.hpp"
#include "talas/protocol/xttp/message/line.hpp"
#include "talas/protocol/xttp/message/parts.hpp"
#include "talas/protocol/xttp/message/body/content.hpp"
#include "talas/protocol/xttp/response/status.hpp"
#include "talas/protocol/xttp/response/reason.hpp"
#include "talas/protocol/xttp/response/line.hpp"

namespace talas {
namespace protocol {
namespace xttp {
namespace response {

/// class messaget
template <class TExtends = message::partst<response::line>, class TImplements = typename TExtends::implements>
class exported messaget: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef messaget derives;

    typedef extends parts_t;
    typedef typename parts_t::line_t line_t;
    typedef typename parts_t::headers_t headers_t;
    typedef typename parts_t::content_t content_t;
    typedef typename extends::part_t part_t;
    typedef typename extends::string_t string_t;
    typedef typename string_t::char_t char_t;
    typedef typename extends::reader_t reader_t;
    typedef typename extends::writer_t writer_t;

    /// constructor / destructor
    messaget(const parts_t& parts, const content_t* content): extends(parts, content) {
    }
    messaget(const parts_t& parts): extends(parts) {
    }
    messaget(const line_t& line, const headers_t& headers, const content_t* content): extends(line, headers, content) {
    }
    messaget(const line_t& line, const headers_t& headers): extends(line, headers) {
    }
    messaget(const string_t &copy): extends(copy) {
    }
    messaget(const char_t* chars, size_t length): extends(chars, length) {
    }
    messaget(const char_t* chars): extends(chars) {
    }
    messaget(const messaget& copy): extends(copy) {
    }
    messaget() {
    }
    virtual ~messaget() {
    }

}; /// class messaget
typedef messaget<> message;

} /// namespace response
} /// namespace xttp
} /// namespace protocol
} /// namespace talas

#endif /// ndef TALAS_PROTOCOL_XTTP_RESPONSE_MESSAGE_HPP 
