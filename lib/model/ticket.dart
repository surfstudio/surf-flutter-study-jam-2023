// Ticket
class Ticket {
  Ticket({required this.name, required this.type});
  final String name;
  final TicketType type;
  
}

// Type of transport - plane / train
enum TicketType { plane, train }
