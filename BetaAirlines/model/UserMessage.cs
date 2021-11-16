using System;

namespace BetaAirlines.model
{
    public class UserMessage
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public string ContactDate { get; set; }
        public int Active { get; set; }
    }
}